import '/d_select_product_repair/mobile/components/filter_item/filter_item_widget.dart';
import '/d_select_product_repair/mobile/components/product_card2/product_card2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'select_motor_mobile2_model.dart';
export 'select_motor_mobile2_model.dart';

class SelectMotorMobile2Widget extends StatefulWidget {
  const SelectMotorMobile2Widget({super.key});

  static String routeName = 'SelectMotorMobile2';
  static String routePath = '/selectMotorMobile2';

  @override
  State<SelectMotorMobile2Widget> createState() =>
      _SelectMotorMobile2WidgetState();
}

class _SelectMotorMobile2WidgetState extends State<SelectMotorMobile2Widget> {
  late SelectMotorMobile2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectMotorMobile2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.rectangle,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).onSurface,
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SELECT MOTOR',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 32.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w900,
                            lineHeight: 1.4,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                    Text(
                      'Choose the specific motor that fits your AC unit model. Certified for DIY installation.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.robotoMono(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Container(
                  child: Divider(
                    height: 16.0,
                    thickness: 1.0,
                    indent: 0.0,
                    endIndent: 0.0,
                    color: FlutterFlowTheme.of(context).onSurface,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 24.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.filterItemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterItemWidget(
                                icon: Icon(
                                  Icons.label_important_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                                label: 'Brand',
                                bg: FlutterFlowTheme.of(context).primaryText,
                                radius: 0.0,
                                active: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.filterItemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterItemWidget(
                                icon: Icon(
                                  Icons.straighten_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                                label: 'Size & HP',
                                bg: FlutterFlowTheme.of(context).primaryText,
                                radius: 0.0,
                                active: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.filterItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterItemWidget(
                                icon: Icon(
                                  Icons.settings_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 16.0,
                                ),
                                label: 'Specs',
                                bg: FlutterFlowTheme.of(context).primaryText,
                                radius: 0.0,
                                active: true,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.filterItemModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterItemWidget(
                                icon: Icon(
                                  Icons.payments_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                                label: 'Price',
                                bg: FlutterFlowTheme.of(context).primaryText,
                                radius: 0.0,
                                active: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.filterItemModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: FilterItemWidget(
                                icon: Icon(
                                  Icons.check_circle_outline_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 16.0,
                                ),
                                label: 'Stock',
                                bg: FlutterFlowTheme.of(context).primaryText,
                                radius: 0.0,
                                active: false,
                              ),
                            ),
                          ].divide(SizedBox(width: 8.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'RECOMMENDED (12)',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .labelLargeFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w900,
                                lineHeight: 1.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .labelLargeIsCustom,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'SORT:',
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelSmallFamily,
                                    letterSpacing: 0.0,
                                    lineHeight: 1.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelSmallIsCustom,
                                  ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 4.0, 8.0, 4.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'MATCH',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.0,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        size: 14.0,
                                      ),
                                    ].divide(SizedBox(width: 4.0)),
                                  ),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        wrapWithModel(
                          model: _model.productCardSModel,
                          updateCallback: () => safeSetState(() {}),
                          child: ProductCard2Widget(
                            title: 'CARRIER 1/2 HP FAN MOTOR',
                            desc: 'Compatible with most 2-ton central units.',
                            img:
                                'https://dimg.dreamflow.cloud/v1/image/industrial%20electric%20motor%20silver',
                            price: 189.00,
                            rpm: '1075 RPM',
                            status: 'IN STOCK',
                            topRated: true,
                            motorVoltage: '208-230V',
                            type: 'MOTOR',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: ProductCard2Widget(
                            title: 'GENTEQ EVERGREEN ECM',
                            desc: 'High-efficiency replacement motor.',
                            img:
                                'https://dimg.dreamflow.cloud/v1/image/black%20circular%20fan%20motor',
                            price: 245.50,
                            rpm: 'Auto-sensing',
                            status: 'FAST SHIP',
                            topRated: false,
                            motorVoltage: '115/230V',
                            type: 'MOTOR',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: ProductCard2Widget(
                            title: 'MARS UNIVERSAL MOTOR',
                            desc: 'Multi-HP 1/6-1/3 compatible.',
                            img:
                                'https://dimg.dreamflow.cloud/v1/image/gray%20heavy%20duty%20ac%20motor',
                            price: 152.00,
                            rpm: '1075/825 RPM',
                            status: 'LOW STOCK',
                            topRated: false,
                            motorVoltage: '208-230V',
                            type: 'MOTOR',
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
