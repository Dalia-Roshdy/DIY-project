import '/components/button38_widget.dart';
import '/components/order_card_widget.dart';
import '/components/text_field18_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'new_screen1_model.dart';
export 'new_screen1_model.dart';

class NewScreen1Widget extends StatefulWidget {
  const NewScreen1Widget({super.key});

  static String routeName = 'NewScreen1';
  static String routePath = '/newScreen1';

  @override
  State<NewScreen1Widget> createState() => _NewScreen1WidgetState();
}

class _NewScreen1WidgetState extends State<NewScreen1Widget> {
  late NewScreen1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewScreen1Model());

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
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          48.0, 32.0, 48.0, 32.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 14.0,
                                ),
                                Text(
                                  'Home',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                                Text(
                                  '/',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                                Text(
                                  'Support',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                                Text(
                                  '/',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                                Text(
                                  'Track & Find My Order',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                            Container(
                              height: 24.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TRACK & FIND MY ORDER',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .displaySmallFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        lineHeight: 1.1,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .displaySmallIsCustom,
                                      ),
                                ),
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 600.0,
                                  ),
                                  child: Text(
                                    'Can\'t find your confirmation email? Enter your details below to securely locate your order status and shipping history.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLargeFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          lineHeight: 1.5,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyLargeIsCustom,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Container(
                              height: 32.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(32.0),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'EMAIL ADDRESS',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallIsCustom,
                                                          ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.textFieldModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextField18Widget(
                                                    label: '',
                                                    labelPresent: false,
                                                    helper: '',
                                                    helperPresent: false,
                                                    hint:
                                                        'e.g. name@example.com',
                                                    value: '',
                                                    onChange: '',
                                                    onSubmit: '',
                                                    leadingIcon: Icon(
                                                      Icons.email_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    leadingIconPresent: true,
                                                    trailingIconPresent: false,
                                                    variant: 'outlined',
                                                    error: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 4.0)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'PHONE NUMBER',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallIsCustom,
                                                          ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.textFieldModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextField18Widget(
                                                    label: '',
                                                    labelPresent: false,
                                                    helper: '',
                                                    helperPresent: false,
                                                    hint: '(555) 000-0000',
                                                    value: '',
                                                    onChange: '',
                                                    onSubmit: '',
                                                    leadingIcon: Icon(
                                                      Icons.phone_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    leadingIconPresent: true,
                                                    trailingIconPresent: false,
                                                    variant: 'outlined',
                                                    error: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 4.0)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'LAST 4 DIGITS',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            lineHeight: 1.2,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallIsCustom,
                                                          ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.textFieldModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextField18Widget(
                                                    label: '',
                                                    labelPresent: false,
                                                    helper: '',
                                                    helperPresent: false,
                                                    hint: '0000',
                                                    value: '',
                                                    onChange: '',
                                                    onSubmit: '',
                                                    leadingIcon: Icon(
                                                      Icons
                                                          .credit_card_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    leadingIconPresent: true,
                                                    trailingIconPresent: false,
                                                    variant: 'outlined',
                                                    error: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 4.0)),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                      wrapWithModel(
                                        model: _model.buttonModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: Button38Widget(
                                          content: 'SEARCH ORDERS',
                                          icon: Icon(
                                            Icons.search_rounded,
                                            color: Colors.white,
                                            size: 16.0,
                                          ),
                                          iconPresent: true,
                                          iconEndPresent: false,
                                          variant: 'primary',
                                          size: 'large',
                                          fullWidth: false,
                                          loading: false,
                                          disabled: false,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.info_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  'No orders found with these credentials. Please check your information and try again.',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.5,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallIsCustom,
                                                          ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 24.0)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 48.0,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'RECENT ORDERS (2)',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleLargeFamily,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        lineHeight: 1.2,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .titleLargeIsCustom,
                                      ),
                                ),
                                Text(
                                  'Showing results for your account',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontStyle: FontStyle.italic,
                                        lineHeight: 1.5,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodySmallIsCustom,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              height: 16.0,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                wrapWithModel(
                                  model: _model.orderCardModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: OrderCardWidget(
                                    date: 'October 12, 2023',
                                    iconName: Icon(
                                      Icons.inventory_2_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 28.0,
                                    ),
                                    idNum: 'ORD-88291',
                                    items:
                                        'Replacement Capacitor, Service Valve Set',
                                    status: 'DELIVERED',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.orderCardModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: OrderCardWidget(
                                    date: 'October 24, 2023',
                                    iconName: Icon(
                                      Icons.local_shipping_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 28.0,
                                    ),
                                    idNum: 'ORD-90214',
                                    items: 'HVAC Contactor (24V Coil)',
                                    status: 'IN TRANSIT',
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Container(
                              height: 48.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(32.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'STILL NEED HELP?',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeFamily,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w900,
                                                  lineHeight: 1.2,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .titleLargeIsCustom,
                                                ),
                                          ),
                                          Text(
                                            'Our support team is available 24/7 to help you find your order or assist with any repair questions.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  lineHeight: 1.5,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model: _model.buttonModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: Button38Widget(
                                              content: 'LIVE CHAT',
                                              icon: Icon(
                                                Icons.chat_bubble_outlined,
                                                color: Colors.white,
                                                size: 16.0,
                                              ),
                                              iconPresent: true,
                                              iconEndPresent: false,
                                              variant: 'primary',
                                              size: 'medium',
                                              fullWidth: false,
                                              loading: false,
                                              disabled: false,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.buttonModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: Button38Widget(
                                              content: 'FAQS',
                                              icon: Icon(
                                                Icons.help_outline_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 16.0,
                                              ),
                                              iconPresent: true,
                                              iconEndPresent: false,
                                              variant: 'outline',
                                              size: 'medium',
                                              fullWidth: false,
                                              loading: false,
                                              disabled: false,
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 16.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
