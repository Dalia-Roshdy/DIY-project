import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/d_select_product_repair/desktop/components/b_select_product_main/b_select_product_main_widget.dart';
import '/d_select_product_repair/desktop/components/components/a_header_section/a_header_section_widget.dart';
import '/d_select_product_repair/desktop/components/components/s18_filter_repair_parts_desktop/s18_filter_repair_parts_desktop_widget.dart';
import '/d_select_product_repair/desktop/user_input_a_c_details/user_input_a_c_details_widget.dart';
import '/d_select_product_repair/mobile/components/serlect_product_mobile/serlect_product_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'd_select_product_repair_model.dart';
export 'd_select_product_repair_model.dart';

class DSelectProductRepairWidget extends StatefulWidget {
  const DSelectProductRepairWidget({
    super.key,
    this.part,
  });

  final Parts? part;

  static String routeName = 'D-Select_Product_Repair';
  static String routePath = '/products';

  @override
  State<DSelectProductRepairWidget> createState() =>
      _DSelectProductRepairWidgetState();
}

class _DSelectProductRepairWidgetState
    extends State<DSelectProductRepairWidget> {
  late DSelectProductRepairModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DSelectProductRepairModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.part != null) {
        _model.selectedPart = widget.part;
        _model.partList = [];
        safeSetState(() {});
      } else {
        _model.selectedPart = Parts.MOTOR;
        _model.partList = [];
        safeSetState(() {});
      }

      if (_model.selectedPart == Parts.MOTOR) {
        if (!(FFAppState().MotorCardList.isNotEmpty)) {
          await actions.filterMotorItemsV2();
        }
        _model.partList = FFAppState()
            .MotorCardList
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      } else if (_model.selectedPart == Parts.CONTACTOR) {
        if (!(FFAppState().ContCardList.isNotEmpty)) {
          await actions.filterContactorItemsV2();
        }
        _model.partList = FFAppState()
            .ContCardList
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      } else if (_model.selectedPart == Parts.CAPACITOR) {
        if (!(FFAppState().CapacCardList.isNotEmpty)) {
          await actions.filterCapacitorItemsV2();
        }
        _model.partList = FFAppState()
            .CapacCardList
            .sortedList(keyOf: (e) => e.title, desc: false)
            .toList()
            .cast<PartCardDTOStruct>();
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: ClipRRect(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.96,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                      ),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.s01NavigatioBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: S01NavigatioBarWidget(),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              wrapWithModel(
                                model: _model.serlectProductMobileModel,
                                updateCallback: () => safeSetState(() {}),
                                child: SerlectProductMobileWidget(
                                  selectedPartPram: _model.selectedPart,
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              ClipRRect(
                                child: Container(
                                  height: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall
                                        ? 10.0
                                        : 30.0,
                                    30.0,
                                  ),
                                  decoration: BoxDecoration(),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 12.0),
                                  child: wrapWithModel(
                                    model: _model.aHeaderSectionModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: AHeaderSectionWidget(
                                      partParam: _model.selectedPart?.name,
                                    ),
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: wrapWithModel(
                                                model: _model
                                                    .s18FilterRepairPartsDesktopModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                updateOnChange: true,
                                                child:
                                                    S18FilterRepairPartsDesktopWidget(
                                                  selectedPartPram:
                                                      _model.selectedPart,
                                                  onMotorSelected:
                                                      (selectedPart, volt, hp,
                                                          rpm, rotation) async {
                                                    _model.selectedPart =
                                                        Parts.MOTOR;
                                                    _model.partList = [];
                                                    if (!(FFAppState()
                                                        .MotorCardList
                                                        .isNotEmpty)) {
                                                      await actions
                                                          .filterMotorItemsV2();
                                                    }
                                                    _model.partList = FFAppState()
                                                        .MotorCardList
                                                        .where((e) =>
                                                            ((volt == null) ||
                                                                (volt == 0) ||
                                                                (e.motorCard.motorVolt ==
                                                                    volt)) &&
                                                            ((rpm == null) ||
                                                                (rpm == 0) ||
                                                                (e.motorCard.motorRpm ==
                                                                    rpm)) &&
                                                            ((rotation == null ||
                                                                    rotation ==
                                                                        '') ||
                                                                (rotation ==
                                                                    '') ||
                                                                (e.motorCard.motorRotation ==
                                                                    rotation)) &&
                                                            ((hp == null) ||
                                                                (hp == 0.0) ||
                                                                ((e.motorCard.motorHpMin <=
                                                                        hp) &&
                                                                    (e.motorCard.motorHpMax >=
                                                                        hp))))
                                                        .toList()
                                                        .sortedList(
                                                            keyOf: (e) => e.title,
                                                            desc: false)
                                                        .toList()
                                                        .cast<PartCardDTOStruct>();
                                                    safeSetState(() {});
                                                  },
                                                  onContSelected: (amp, nop,
                                                      selectedPart) async {
                                                    _model.partList = [];
                                                    _model.selectedPart =
                                                        Parts.CONTACTOR;
                                                    safeSetState(() {});
                                                    if (!(FFAppState()
                                                        .ContCardList
                                                        .isNotEmpty)) {
                                                      await actions
                                                          .filterContactorItemsV2();
                                                    }
                                                    _model.partList = FFAppState()
                                                        .ContCardList
                                                        .where((e) =>
                                                            ((amp == null) ||
                                                                (amp == 0.0) ||
                                                                (e.contactorCard
                                                                        .contratedAmp ==
                                                                    amp)) &&
                                                            ((nop == null) ||
                                                                (nop == 0) ||
                                                                (e.contactorCard
                                                                        .contNumberOfPoles ==
                                                                    nop)))
                                                        .toList()
                                                        .sortedList(
                                                            keyOf: (e) =>
                                                                e.title,
                                                            desc: false)
                                                        .toList()
                                                        .cast<
                                                            PartCardDTOStruct>();
                                                    safeSetState(() {});
                                                  },
                                                  onCapatSelected:
                                                      (selectedPart, mfd1, mfd2,
                                                          type, shape) async {
                                                    _model.partList = [];
                                                    _model.selectedPart =
                                                        Parts.CAPACITOR;
                                                    safeSetState(() {});
                                                    if (!(FFAppState()
                                                        .CapacCardList
                                                        .isNotEmpty)) {
                                                      await actions
                                                          .filterCapacitorItemsV2();
                                                    }
                                                    _model.partList =
                                                        FFAppState()
                                                            .CapacCardList
                                                            .where((e) =>
                                                                ((mfd1 ==
                                                                        null) ||
                                                                    (mfd1 ==
                                                                        0.0) ||
                                                                    (e.capacitorCard.capacMFD1 ==
                                                                        mfd1)) &&
                                                                ((mfd2 ==
                                                                        null) ||
                                                                    (mfd2 ==
                                                                        0.0) ||
                                                                    (e.capacitorCard
                                                                            .capacMFD2 ==
                                                                        mfd2)) &&
                                                                ((type ==
                                                                            null ||
                                                                        type ==
                                                                            '') ||
                                                                    (type ==
                                                                        '') ||
                                                                    (e.capacitorCard
                                                                            .capacType ==
                                                                        () {
                                                                          if (type ==
                                                                              CapacitorType
                                                                                  .Single.name) {
                                                                            return CapacitorType.Single;
                                                                          } else if (type ==
                                                                              CapacitorType.Dual.name) {
                                                                            return CapacitorType.Dual;
                                                                          } else {
                                                                            return CapacitorType.Single;
                                                                          }
                                                                        }())) &&
                                                                ((shape == null ||
                                                                        shape ==
                                                                            '') ||
                                                                    (shape ==
                                                                        '') ||
                                                                    (e.capacitorCard
                                                                            .capacShape ==
                                                                        () {
                                                                          if (shape ==
                                                                              CapacitorShape
                                                                                  .Oval.name) {
                                                                            return CapacitorShape.Oval;
                                                                          } else if (shape ==
                                                                              CapacitorShape.Round.name) {
                                                                            return CapacitorShape.Round;
                                                                          } else {
                                                                            return CapacitorShape.Round;
                                                                          }
                                                                        }())))
                                                            .toList()
                                                            .sortedList(
                                                                keyOf: (e) =>
                                                                    e.title,
                                                                desc: false)
                                                            .toList()
                                                            .cast<
                                                                PartCardDTOStruct>();
                                                    safeSetState(() {});
                                                  },
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (FFAppState()
                                                        .userAC
                                                        .acMake
                                                        ?.id !=
                                                    null &&
                                                FFAppState()
                                                        .userAC
                                                        .acMake
                                                        ?.id !=
                                                    '')
                                              wrapWithModel(
                                                model: _model
                                                    .userInputACDetailsModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child:
                                                    UserInputACDetailsWidget(),
                                              ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 8.0, 0.0),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .bSelectProductMainModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      BSelectProductMainWidget(
                                                    partParams: _model
                                                        .selectedPart?.name,
                                                    count:
                                                        _model.partList.length,
                                                    partList: _model.partList,
                                                    all: () {
                                                      if ((_model.selectedPart ==
                                                              Parts.MOTOR) &&
                                                          (FFAppState()
                                                                      .userAC
                                                                      .motorSpecIdRef
                                                                      ?.id !=
                                                                  null &&
                                                              FFAppState()
                                                                      .userAC
                                                                      .motorSpecIdRef
                                                                      ?.id !=
                                                                  '')) {
                                                        return true;
                                                      } else if ((_model
                                                                  .selectedPart ==
                                                              Parts
                                                                  .CAPACITOR) &&
                                                          (FFAppState()
                                                                      .userAC
                                                                      .capacitorSpecIdRef
                                                                      ?.id !=
                                                                  null &&
                                                              FFAppState()
                                                                      .userAC
                                                                      .capacitorSpecIdRef
                                                                      ?.id !=
                                                                  '')) {
                                                        return true;
                                                      } else if ((_model
                                                                  .selectedPart ==
                                                              Parts
                                                                  .CONTACTOR) &&
                                                          (FFAppState()
                                                                      .userAC
                                                                      .contactorSpecIdRef
                                                                      ?.id !=
                                                                  null &&
                                                              FFAppState()
                                                                      .userAC
                                                                      .contactorSpecIdRef
                                                                      ?.id !=
                                                                  '')) {
                                                        return true;
                                                      } else {
                                                        return false;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                            ))
                              wrapWithModel(
                                model: _model.s12FooterModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S12FooterWidget(),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]
                .addToStart(SizedBox(
                    height: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 32.0
                      : 64.0,
                  64.0,
                )))
                .addToEnd(SizedBox(
                    height: valueOrDefault<double>(
                  MediaQuery.sizeOf(context).width < kBreakpointSmall
                      ? 32.0
                      : 64.0,
                  64.0,
                ))),
          ),
        ),
      ),
    );
  }
}
