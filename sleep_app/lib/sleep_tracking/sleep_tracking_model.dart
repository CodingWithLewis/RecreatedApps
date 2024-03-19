import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'sleep_tracking_widget.dart' show SleepTrackingWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class SleepTrackingModel extends FlutterFlowModel<SleepTrackingWidget> {
  ///  Local state fields for this page.

  DateTime? sleepTimer;

  DateTime? startTime;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioRecorder? audioRecorder;
  String? audioFile;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Backend Call - API (Submit Audio Sample)] action in Button widget.
  ApiCallResponse? apiResultyd7;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  SleepScoresRecord? document;
  // State field(s) for Timer widget.
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
