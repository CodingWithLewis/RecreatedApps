import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'meal_card_model.dart';
export 'meal_card_model.dart';

class MealCardWidget extends StatefulWidget {
  const MealCardWidget({
    super.key,
    this.scanRef,
  });

  final ScansRecord? scanRef;

  @override
  State<MealCardWidget> createState() => _MealCardWidgetState();
}

class _MealCardWidgetState extends State<MealCardWidget> {
  late MealCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealCardModel());

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
        logFirebaseEvent('MEAL_CARD_COMP_Column_7nse8gf3_ON_TAP');
        logFirebaseEvent('Column_haptic_feedback');
        HapticFeedback.lightImpact();
        logFirebaseEvent('Column_navigate_to');

        context.pushNamed(
          'MealDetails',
          pathParameters: {
            'scanRef': serializeParam(
              widget.scanRef?.id,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('MEAL_CARD_COMP_Container_xsjr6r56_ON_TAP');
              logFirebaseEvent('Container_haptic_feedback');
              HapticFeedback.lightImpact();
              logFirebaseEvent('Container_navigate_to');

              context.pushNamed(
                'MealDetails',
                pathParameters: {
                  'scanRef': serializeParam(
                    widget.scanRef?.id,
                    ParamType.String,
                  ),
                }.withoutNulls,
              );
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.48,
              height: 150.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    widget.scanRef!.imageUrl,
                  ),
                ),
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.scanRef?.productName,
                'Scan',
              ).maybeHandleOverflow(
                maxChars: 36,
                replacement: '…',
              ),
              maxLines: 2,
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
