import '/components/custom_appbar_widget.dart';
import '/components/food_component/food_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meal_details_widget.dart' show MealDetailsWidget;
import 'package:flutter/material.dart';

class MealDetailsModel extends FlutterFlowModel<MealDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for FoodComponent dynamic component.
  late FlutterFlowDynamicModels<FoodComponentModel> foodComponentModels1;
  // Models for FoodComponent dynamic component.
  late FlutterFlowDynamicModels<FoodComponentModel> foodComponentModels2;
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    foodComponentModels1 = FlutterFlowDynamicModels(() => FoodComponentModel());
    foodComponentModels2 = FlutterFlowDynamicModels(() => FoodComponentModel());
    customAppbarModel = createModel(context, () => CustomAppbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    foodComponentModels1.dispose();
    foodComponentModels2.dispose();
    customAppbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
