import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'camera_widget.dart' show CameraWidget;
import 'package:flutter/material.dart';

class CameraModel extends FlutterFlowModel<CameraWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  var barcodeResult = '';
  // Stores action output result for [Backend Call - API (Barcode Scan)] action in camera widget.
  ApiCallResponse? aPIResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
