import '/b_screen_components/s01_navigatio_bar/s01_navigatio_bar_widget.dart';
import '/b_screen_components/s05_what_we_offer/s05_what_we_offer_widget.dart';
import '/b_screen_components/s06_core_features/s06_core_features_widget.dart';
import '/b_screen_components/s08_company_investors/s08_company_investors_widget.dart';
import '/b_screen_components/s09_testimonials/s09_testimonials_widget.dart';
import '/b_screen_components/s10_contac_us/s10_contac_us_widget.dart';
import '/b_screen_components/s11_socials/s11_socials_widget.dart';
import '/b_screen_components/s12_footer/s12_footer_widget.dart';
import '/b_screen_components/s13_squares/s13_squares_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/z_drafts/s03_homestartdiagnosis_01/s03_homestartdiagnosis01_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'b_diagnosis_copy_model.dart';
export 'b_diagnosis_copy_model.dart';

class BDiagnosisCopyWidget extends StatefulWidget {
  const BDiagnosisCopyWidget({super.key});

  static String routeName = 'B-DiagnosisCopy';
  static String routePath = '/bDiagnosisCopy';

  @override
  State<BDiagnosisCopyWidget> createState() => _BDiagnosisCopyWidgetState();
}

class _BDiagnosisCopyWidgetState extends State<BDiagnosisCopyWidget> {
  late BDiagnosisCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BDiagnosisCopyModel());

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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 2000.0,
                    ),
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.96,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: CachedNetworkImageProvider(
                                valueOrDefault<String>(
                                  MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall
                                      ? 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/snombgtjslh3/Lines_Phone.png'
                                      : 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/the-company-kx87u5/assets/f0wd86jvtesu/Lines_TabletPC.png',
                                ),
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.s01NavigatioBarModel,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: S01NavigatioBarWidget(),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 25.0
                                                : 100.0,
                                            100.0,
                                          ),
                                          decoration: BoxDecoration(),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        wrapWithModel(
                                          model: _model
                                              .s03Homestartdiagnosis01Model,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child:
                                              S03Homestartdiagnosis01Widget(),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          height: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <
                                                    kBreakpointSmall
                                                ? 25.0
                                                : 100.0,
                                            100.0,
                                          ),
                                          decoration: BoxDecoration(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              wrapWithModel(
                                model: _model.s05WhatWeOfferModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S05WhatWeOfferWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s06CoreFeaturesModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S06CoreFeaturesWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s08CompanyInvestorsModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S08CompanyInvestorsWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s09TestimonialsModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S09TestimonialsWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s10ContacUsModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S10ContacUsWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s11SocialsModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S11SocialsWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s12FooterModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S12FooterWidget(),
                              ),
                              wrapWithModel(
                                model: _model.s13SquaresModel,
                                updateCallback: () => safeSetState(() {}),
                                child: S13SquaresWidget(),
                              ),
                            ].divide(SizedBox(
                                height: valueOrDefault<double>(
                              MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall
                                  ? 25.0
                                  : 50.0,
                              50.0,
                            ))),
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
      ),
    );
  }
}
