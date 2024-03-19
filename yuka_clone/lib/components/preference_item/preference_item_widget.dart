import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'preference_item_model.dart';
export 'preference_item_model.dart';

class PreferenceItemWidget extends StatefulWidget {
  const PreferenceItemWidget({
    super.key,
    required this.text,
    required this.selectedItems,
    required this.action,
  });

  final String? text;
  final List<String>? selectedItems;
  final Future Function()? action;

  @override
  State<PreferenceItemWidget> createState() => _PreferenceItemWidgetState();
}

class _PreferenceItemWidgetState extends State<PreferenceItemWidget> {
  late PreferenceItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreferenceItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        logFirebaseEvent('PREFERENCE_ITEM_Container_vxpj4i7j_ON_TA');
        logFirebaseEvent('Container_execute_callback');
        await widget.action?.call();
      },
      child: Container(
        height: 44.0,
        decoration: BoxDecoration(
          color: widget.selectedItems!.contains(widget.text)
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      color: widget.selectedItems!.contains(widget.text)
                          ? FlutterFlowTheme.of(context).primaryBackground
                          : FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
