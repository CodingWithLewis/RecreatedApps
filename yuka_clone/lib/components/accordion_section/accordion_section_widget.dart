import '/components/accordion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'accordion_section_model.dart';
export 'accordion_section_model.dart';

class AccordionSectionWidget extends StatefulWidget {
  const AccordionSectionWidget({super.key});

  @override
  State<AccordionSectionWidget> createState() => _AccordionSectionWidgetState();
}

class _AccordionSectionWidgetState extends State<AccordionSectionWidget> {
  late AccordionSectionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccordionSectionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        wrapWithModel(
          model: _model.accordionModel,
          updateCallback: () => setState(() {}),
          child: AccordionWidget(
            expandedAccordionIndex: _model.accordionSectionExpanded,
            accordionIndex: 1,
            question: 'dasfsdf',
            answer: 'asdfasdf',
            action: () async {},
          ),
        ),
      ],
    );
  }
}
