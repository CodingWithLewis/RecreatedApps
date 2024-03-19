import '/components/accordion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accordion_section_widget.dart' show AccordionSectionWidget;
import 'package:flutter/material.dart';

class AccordionSectionModel extends FlutterFlowModel<AccordionSectionWidget> {
  ///  Local state fields for this component.

  int accordionSectionExpanded = -1;

  ///  State fields for stateful widgets in this component.

  // Model for accordion component.
  late AccordionModel accordionModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    accordionModel = createModel(context, () => AccordionModel());
  }

  @override
  void dispose() {
    accordionModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
