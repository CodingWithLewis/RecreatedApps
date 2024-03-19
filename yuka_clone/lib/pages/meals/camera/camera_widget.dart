import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'camera_model.dart';
export 'camera_model.dart';

class CameraWidget extends StatefulWidget {
  const CameraWidget({super.key});

  @override
  State<CameraWidget> createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  late CameraModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CameraModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'camera'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CAMERA_PAGE_camera_ON_INIT_STATE');
      logFirebaseEvent('camera_scan_barcode_q_r_code');
      _model.barcodeResult = await FlutterBarcodeScanner.scanBarcode(
        '#C62828', // scanning line color
        'Cancel', // cancel button text
        true, // whether to show the flash icon
        ScanMode.BARCODE,
      );

      logFirebaseEvent('camera_backend_call');
      _model.aPIResult = await BarcodeScanCall.call(
        barcodeNumber: _model.barcodeResult,
        userId: currentUserUid,
      );
      if ((_model.aPIResult?.succeeded ?? true) == true) {
        logFirebaseEvent('camera_navigate_to');

        context.pushNamed(
          'MealDetails',
          pathParameters: {
            'scanRef': serializeParam(
              ScanSuccessfulResultStruct.maybeFromMap(
                      (_model.aPIResult?.jsonBody ?? ''))
                  ?.id,
              ParamType.String,
            ),
          }.withoutNulls,
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.bottomToTop,
            ),
          },
        );
      } else {
        logFirebaseEvent('camera_navigate_to');

        context.pushNamed('Dashboard');
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.7,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 200.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
