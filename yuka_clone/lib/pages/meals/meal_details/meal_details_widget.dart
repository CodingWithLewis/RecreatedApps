import '/backend/backend.dart';
import '/components/custom_appbar_widget.dart';
import '/components/food_component/food_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'meal_details_model.dart';
export 'meal_details_model.dart';

class MealDetailsWidget extends StatefulWidget {
  const MealDetailsWidget({
    super.key,
    required this.scanRef,
  });

  final String? scanRef;

  @override
  State<MealDetailsWidget> createState() => _MealDetailsWidgetState();
}

class _MealDetailsWidgetState extends State<MealDetailsWidget> {
  late MealDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealDetailsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'MealDetails'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ScansRecord>>(
      stream: queryScansRecord(
        queryBuilder: (scansRecord) => scansRecord.where(
          'id',
          isEqualTo: widget.scanRef,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 25.0,
                height: 25.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ScansRecord> mealDetailsScansRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final mealDetailsScansRecord = mealDetailsScansRecordList.isNotEmpty
            ? mealDetailsScansRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          height: 329.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                mealDetailsScansRecord!.imageUrl,
                              ).image,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(24.0),
                              topRight: Radius.circular(24.0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.7,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(24.0),
                                      topRight: Radius.circular(24.0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 24.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 228.0,
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: AutoSizeText(
                                                      mealDetailsScansRecord
                                                          .productName,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .displaySmall
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 22.0,
                                                            lineHeight: 1.2,
                                                          ),
                                                      minFontSize: 12.0,
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            mealDetailsScansRecord
                                                                .score,
                                                            'B',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'SF Pro',
                                                            color: () {
                                                              if (mealDetailsScansRecord
                                                                      .score ==
                                                                  'a') {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .success;
                                                              } else if (mealDetailsScansRecord
                                                                      .score ==
                                                                  'b') {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary;
                                                              } else if (mealDetailsScansRecord
                                                                      .score ==
                                                                  'c') {
                                                                return const Color(
                                                                    0xFFDBB814);
                                                              } else {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .error;
                                                              }
                                                            }(),
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 65.0,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  mealDetailsScansRecord
                                                      .brandOwner,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        lineHeight: 1.5,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if ((mealDetailsScansRecord
                                                      .negatives)
                                                  .isNotEmpty)
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 24.0, 24.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      'Negatives',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            lineHeight: 1.5,
                                                          ),
                                                    ),
                                                  ),
                                                  Builder(
                                                    builder: (context) {
                                                      final negatives =
                                                          (mealDetailsScansRecord
                                                                      .negatives
                                                                      .toList() ??
                                                                  [])
                                                              .take(9)
                                                              .toList();
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            negatives.length,
                                                        itemBuilder: (context,
                                                            negativesIndex) {
                                                          final negativesItem =
                                                              negatives[
                                                                  negativesIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .foodComponentModels1
                                                                .getModel(
                                                              negativesIndex
                                                                  .toString(),
                                                              negativesIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                FoodComponentWidget(
                                                              key: Key(
                                                                'Keyo0t_${negativesIndex.toString()}',
                                                              ),
                                                              component:
                                                                  negativesItem,
                                                              sentiment:
                                                                  'negative',
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if ((mealDetailsScansRecord
                                                      .negatives)
                                                  .isNotEmpty)
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 24.0, 24.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      'Negatives',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            lineHeight: 1.5,
                                                          ),
                                                    ),
                                                  ),
                                                  Builder(
                                                    builder: (context) {
                                                      final positives =
                                                          (mealDetailsScansRecord
                                                                      .positives
                                                                      .toList() ??
                                                                  [])
                                                              .take(9)
                                                              .toList();
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            positives.length,
                                                        itemBuilder: (context,
                                                            positivesIndex) {
                                                          final positivesItem =
                                                              positives[
                                                                  positivesIndex];
                                                          return wrapWithModel(
                                                            model: _model
                                                                .foodComponentModels2
                                                                .getModel(
                                                              positivesIndex
                                                                  .toString(),
                                                              positivesIndex,
                                                            ),
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                FoodComponentWidget(
                                                              key: Key(
                                                                'Keyfyl_${positivesIndex.toString()}',
                                                              ),
                                                              component:
                                                                  positivesItem,
                                                              sentiment:
                                                                  'positive',
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 54.0, 24.0, 0.0),
                          child: wrapWithModel(
                            model: _model.customAppbarModel,
                            updateCallback: () => setState(() {}),
                            child: CustomAppbarWidget(
                              backButton: true,
                              actionButton: false,
                              optionsButton: false,
                              actionButtonAction: () async {},
                              optionsButtonAction: () async {},
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
