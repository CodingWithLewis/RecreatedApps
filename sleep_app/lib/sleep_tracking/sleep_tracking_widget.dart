import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/permissions_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:collection/collection.dart';
import 'package:cross_file/cross_file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'sleep_tracking_model.dart';
export 'sleep_tracking_model.dart';

class SleepTrackingWidget extends StatefulWidget {
  const SleepTrackingWidget({super.key});

  @override
  State<SleepTrackingWidget> createState() => _SleepTrackingWidgetState();
}

class _SleepTrackingWidgetState extends State<SleepTrackingWidget> {
  late SleepTrackingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SleepTrackingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.sleepTimer =
          dateTimeFromSecondsSinceEpoch(getCurrentTimestamp.secondsSinceEpoch);
      await requestPermission(microphonePermission);
      if (await getPermissionStatus(microphonePermission)) {
        _model.audioRecorder ??= AudioRecorder();
        if (await _model.audioRecorder!.hasPermission()) {
          final String path;
          final AudioEncoder encoder;
          if (kIsWeb) {
            path = '';
            encoder = AudioEncoder.opus;
          } else {
            final dir = await getApplicationDocumentsDirectory();
            path =
                '${dir.path}/audio_${DateTime.now().millisecondsSinceEpoch}.m4a';
            encoder = AudioEncoder.aacLc;
          }
          await _model.audioRecorder!.start(
            RecordConfig(encoder: encoder),
            path: path,
          );
        } else {
          showSnackbar(
            context,
            'You have not provided permission to record audio.',
          );
        }

        _model.timerController.onStartTimer();
        _model.startTime = getCurrentTimestamp;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'You need to enable Microphone in order for this app to work.',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );

        context.pushNamed('Home');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: Stack(
                  children: [
                    ClipRect(
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: 4.0,
                          sigmaY: 4.0,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                              ),
                              child: Opacity(
                                opacity: 0.7,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1542662565-7e4b66bae529?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxtb3VudGFpbnxlbnwwfHx8fDE3MDgyNzcxNDd8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Good \nNight!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 66.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Icon(
                        Icons.circle_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 389.0,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.6),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.timerController.onStopTimer();
                          _model.audioFile = await _model.audioRecorder?.stop();
                          if (_model.audioFile != null) {
                            _model.recordedFileBytes = FFUploadedFile(
                              name: 'recordedFileBytes.mp3',
                              bytes:
                                  await XFile(_model.audioFile!).readAsBytes(),
                            );
                          }

                          _model.apiResultyd7 =
                              await SubmitAudioSampleCall.call(
                            audioFile: _model.recordedFileBytes,
                            userId: currentUserUid,
                            startedAt: getCurrentTimestamp.secondsSinceEpoch
                                .toString(),
                          );
                          if ((_model.apiResultyd7?.succeeded ?? true)) {
                            _model.document = await querySleepScoresRecordOnce(
                              queryBuilder: (sleepScoresRecord) =>
                                  sleepScoresRecord.where(
                                'uuid',
                                isEqualTo: APIReturnStruct.maybeFromMap(
                                        (_model.apiResultyd7?.jsonBody ?? ''))
                                    ?.uuid,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);

                            context.goNamed(
                              'SingleView',
                              queryParameters: {
                                'scan': serializeParam(
                                  _model.document?.reference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Failed to Make API Call',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }

                          setState(() {});
                        },
                        text: 'Stop Tracking',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          textStyle: FlutterFlowTheme.of(context).titleMedium,
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -0.6),
                      child: FlutterFlowTimer(
                        initialTime: _model.timerMilliseconds,
                        getDisplayTime: (value) =>
                            StopWatchTimer.getDisplayTime(value,
                                milliSecond: false),
                        controller: _model.timerController,
                        updateStateInterval: const Duration(milliseconds: 1000),
                        onChanged: (value, displayTime, shouldUpdate) {
                          _model.timerMilliseconds = value;
                          _model.timerValue = displayTime;
                          if (shouldUpdate) setState(() {});
                        },
                        onEnded: () async {},
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context)
                            .headlineSmall
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 64.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
