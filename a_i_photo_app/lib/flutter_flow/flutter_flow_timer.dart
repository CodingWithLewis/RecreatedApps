import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

// Simple wrapper around StopWatchTimer that emits notifications on events.
class FlutterFlowTimerController with ChangeNotifier {
  final StopWatchTimer timer;

  FlutterFlowTimerController(this.timer);

  void onStartTimer() {
    timer.onStartTimer();
    notifyListeners();
  }

  void onStopTimer() {
    timer.onStopTimer();
    notifyListeners();
  }

  void onResetTimer() {
    timer.onResetTimer();
    late final StreamSubscription subscription;
    // We can't notify listeners right away: they'll see the old timer value.
    // We need to wait until the next time is emitted.
    subscription = timer.rawTime.listen((_) {
      notifyListeners();
      subscription.cancel();
    });
  }

  @override
  void dispose() {
    timer.dispose();
    super.dispose();
  }
}

class FlutterFlowTimer extends StatefulWidget {
  const FlutterFlowTimer({
    super.key,
    required this.initialTime,
    required this.controller,
    required this.getDisplayTime,
    required this.onChanged,
    this.updateStateInterval,
    this.onEnded,
    required this.textAlign,
    required this.style,
  });

  final int initialTime;
  final FlutterFlowTimerController controller;
  final String Function(int) getDisplayTime;
  final Function(int value, String displayTime, bool shouldUpdate) onChanged;
  final Duration? updateStateInterval;
  final Function()? onEnded;
  final TextAlign textAlign;
  final TextStyle style;

  @override
  State<FlutterFlowTimer> createState() => _FlutterFlowTimerState();
}

class _FlutterFlowTimerState extends State<FlutterFlowTimer> {
  int get timerValue => widget.controller.timer.rawTime.value;
  bool get isCountUp => widget.controller.timer.mode == StopWatchMode.countUp;

  late String _displayTime;
  late int lastUpdateMs;

  Function() get onEnded => widget.onEnded ?? () {};

  void _initTimer({required bool shouldUpdate}) {
    // Initialize timer display time and last update time.
    _displayTime = widget.getDisplayTime(widget.controller.timer.rawTime.value);
    lastUpdateMs = timerValue;
    // Update timer value and display time.
    widget.onChanged(timerValue, _displayTime, shouldUpdate);
  }

  @override
  void initState() {
    super.initState();
    // Set the initial time.
    widget.controller.timer.setPresetTime(mSec: widget.initialTime, add: false);
    // Initialize timer properties without updating outer state.
    _initTimer(shouldUpdate: false);
    // Add a listener for when the timer value changes to update the
    // displayed timer value.
    widget.controller.timer.rawTime.listen((_) {
      _displayTime = widget.getDisplayTime(timerValue);
      widget.onChanged(timerValue, _displayTime, _shouldUpdate());
      if (mounted) setState(() {});
    });
    // Add listener for actions executed on timer.
    widget.controller.addListener(() => _initTimer(shouldUpdate: true));

    // Add listener for when the timer ends.
    widget.controller.timer.fetchEnded.listen((_) => onEnded());
  }

  bool _shouldUpdate() {
    // If a null or 0ms update interval is provided, always update.
    final updateIntervalMs = widget.updateStateInterval?.inMilliseconds;
    if (updateIntervalMs == null || updateIntervalMs == 0) {
      return true;
    }
    // Otherwise, we only update after the specified duration has passed
    // since the most recent update.
    final cutoff = lastUpdateMs + updateIntervalMs * (isCountUp ? 1 : -1);
    final shouldUpdate = isCountUp ? timerValue > cutoff : timerValue < cutoff;
    if (shouldUpdate) {
      lastUpdateMs = timerValue;
    }
    return shouldUpdate;
  }

  @override
  Widget build(BuildContext context) => Text(
        _displayTime,
        textAlign: widget.textAlign,
        style: widget.style,
      );
}
