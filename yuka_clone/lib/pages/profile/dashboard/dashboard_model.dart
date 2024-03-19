import '/components/meal_card/meal_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for mealCard dynamic component.
  late FlutterFlowDynamicModels<MealCardModel> mealCardModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mealCardModels = FlutterFlowDynamicModels(() => MealCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mealCardModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
