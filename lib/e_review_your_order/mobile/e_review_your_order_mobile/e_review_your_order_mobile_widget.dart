import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/e_review_your_order/mobile/button6/button6_widget.dart';
import '/e_review_your_order/mobile/part_row2/part_row2_widget.dart';
import '/e_review_your_order/mobile/summary_row/summary_row_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'e_review_your_order_mobile_model.dart';
export 'e_review_your_order_mobile_model.dart';

class EReviewYourOrderMobileWidget extends StatefulWidget {
  const EReviewYourOrderMobileWidget({
    super.key,
    this.toolsC,
  });

  final List<ItemsRecord>? toolsC;

  @override
  State<EReviewYourOrderMobileWidget> createState() =>
      _EReviewYourOrderMobileWidgetState();
}

class _EReviewYourOrderMobileWidgetState
    extends State<EReviewYourOrderMobileWidget> {
  late EReviewYourOrderMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EReviewYourOrderMobileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 700,
        ),
      );
      _model.toolsCS = widget.toolsC!.toList().cast<ItemsRecord>();
      _model.updatePage(() {});
    });

    _model.textFieldSLTextController ??=
        TextEditingController(text: FFAppState().Cart.motorSLComment);
    _model.textFieldSLFocusNode ??= FocusNode();

    _model.textFieldMessageTextController ??=
        TextEditingController(text: FFAppState().Cart.comment);
    _model.textFieldMessageFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
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
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Review Your Order',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                        lineHeight: 1.25,
                        useGoogleFonts: !FlutterFlowTheme.of(context)
                            .headlineMediumIsCustom,
                      ),
                ),
                Text(
                  'Check your selected parts and recommended tools before finishing your purchase.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                        lineHeight: 1.5,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 16.0),
            child: Container(
              constraints: BoxConstraints(
                maxHeight: double.infinity,
              ),
              child: Material(
                color: Colors.transparent,
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).tertiary,
                      width: 1.0,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 16.0, 24.0, 16.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.storefront_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    Text(
                                      'Order Items',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .titleSmallIsCustom,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                            Container(
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).tertiary,
                                shape: BoxShape.rectangle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).grey,
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 8.0, 10.0, 8.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 50.0,
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        'Part Details',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onSurface,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              lineHeight: 1.2,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Container(
                                        width: 100.0,
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Qty',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .onSurface,
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    lineHeight: 1.2,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallIsCustom,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Price/each',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onSurface,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                lineHeight: 1.2,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmallIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Container(
                                        width: 50.0,
                                        decoration: BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).tertiary,
                                shape: BoxShape.rectangle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            14.0, 0.0, 14.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final cartListItems = FFAppState()
                                .Cart
                                .cartItems
                                .where((e) => e.specType != Parts.TOOL.name)
                                .toList();

                            return ListView.separated(
                              padding: EdgeInsets.symmetric(vertical: 6.0),
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: cartListItems.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 6.0),
                              itemBuilder: (context, cartListItemsIndex) {
                                final cartListItemsItem =
                                    cartListItems[cartListItemsIndex];
                                return PartRow2Widget(
                                  key: Key(
                                      'Key5ro_${cartListItemsIndex}_of_${cartListItems.length}'),
                                  details:
                                      '${cartListItemsItem.specType} | ${cartListItemsItem.desc}',
                                  name: cartListItemsItem.title,
                                  price: cartListItemsItem.price.toString(),
                                  qty: cartListItemsItem.qty,
                                  last: false,
                                  itemId: cartListItemsItem.itemId!,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 16.0),
            child: Container(
              child: Visibility(
                visible: (_model.toolsCS.isNotEmpty) == true,
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(16.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).tertiary,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 24.0, 14.0, 24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    'Recommended Items to add to order',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .titleSmallIsCustom,
                                        ),
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ),
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '✲ ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Refundable once returned within 7 days',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primary20,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyMediumIsCustom,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary20,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                          Builder(
                            builder: (context) {
                              final toolsListDisplay = _model.toolsCS.toList();

                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(toolsListDisplay.length,
                                    (toolsListDisplayIndex) {
                                  final toolsListDisplayItem =
                                      toolsListDisplay[toolsListDisplayIndex];
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 12.0, 8.0, 12.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Theme(
                                              data: ThemeData(
                                                checkboxTheme:
                                                    CheckboxThemeData(
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                  ),
                                                ),
                                                unselectedWidgetColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                              ),
                                              child: Checkbox(
                                                value: _model
                                                        .checkboxToolValueMap[
                                                    toolsListDisplayItem] ??= FFAppState()
                                                            .Cart
                                                            .cartItems
                                                            .where((e) =>
                                                                e.itemId ==
                                                                toolsListDisplayItem
                                                                    .reference)
                                                            .toList()
                                                            .length ==
                                                        1
                                                    ? true
                                                    : false,
                                                onChanged: (newValue) async {
                                                  safeSetState(() => _model
                                                              .checkboxToolValueMap[
                                                          toolsListDisplayItem] =
                                                      newValue!);
                                                  if (newValue!) {
                                                    FFAppState()
                                                        .updateCartStruct(
                                                      (e) => e
                                                        ..updateCartItems(
                                                          (e) => e.add(
                                                              CartItemStruct(
                                                            itemId:
                                                                toolsListDisplayItem
                                                                    .reference,
                                                            title:
                                                                toolsListDisplayItem
                                                                    .description,
                                                            specType:
                                                                Parts.TOOL.name,
                                                            desc:
                                                                toolsListDisplayItem
                                                                    .description,
                                                            price: (toolsListDisplayItem
                                                                            .discountPrice !=
                                                                        null) &&
                                                                    (toolsListDisplayItem
                                                                            .discountPrice >
                                                                        0.0)
                                                                ? toolsListDisplayItem
                                                                    .discountPrice
                                                                : toolsListDisplayItem
                                                                    .salePrice,
                                                            qty: 1,
                                                            isReturnable:
                                                                toolsListDisplayItem
                                                                    .isReturnable,
                                                          )),
                                                        ),
                                                    );
                                                    await actions
                                                        .calculateCartTotal();
                                                    _model.updatePage(() {});
                                                  } else {
                                                    FFAppState()
                                                        .updateCartStruct(
                                                      (e) => e
                                                        ..updateCartItems(
                                                          (e) => e.remove(FFAppState()
                                                              .Cart
                                                              .cartItems
                                                              .where((e) =>
                                                                  e.itemId ==
                                                                  toolsListDisplayItem
                                                                      .reference)
                                                              .toList()
                                                              .firstOrNull),
                                                        ),
                                                    );
                                                    _model.updatePage(() {});
                                                    await actions
                                                        .calculateCartTotal();
                                                    _model.updatePage(() {});
                                                  }
                                                },
                                                side: (FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText !=
                                                        null)
                                                    ? BorderSide(
                                                        width: 2,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      )
                                                    : null,
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                checkColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        toolsListDisplayItem
                                                            .description,
                                                        maxLines: 1,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              lineHeight: 1.5,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                        overflow: TextOverflow
                                                            .visible,
                                                      ),
                                                    ),
                                                  ),
                                                  if (toolsListDisplayItem
                                                      .isReturnable)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '✲ ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary20,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  lineHeight:
                                                                      1.5,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '\$${(toolsListDisplayItem.discountPrice != null) && (toolsListDisplayItem.discountPrice > 0.0) ? toolsListDisplayItem.discountPrice.toString() : toolsListDisplayItem.salePrice.toString()}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            lineHeight: 1.5,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 16.0)),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                      ),
                                    ),
                                  );
                                }).divide(SizedBox(height: 12.0)),
                              );
                            },
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (FFAppState()
                  .Cart
                  .cartItems
                  .where((e) => e.specType == Parts.MOTOR.name)
                  .toList()
                  .length >
              0)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 24.0),
              child: Container(
                child: Visibility(
                  visible: FFAppState()
                          .Cart
                          .cartItems
                          .where((e) => e.specType == 'MOTOR')
                          .toList()
                          .length !=
                      0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(16.0),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          14.0, 24.0, 14.0, 24.0),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Text(
                                      'Need a custom Motor Shaft length (Inch)?',
                                      maxLines: 3,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLargeFamily,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .bodyLargeIsCustom,
                                          ),
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ),
                                Theme(
                                  data: ThemeData(
                                    checkboxTheme: CheckboxThemeData(
                                      visualDensity: VisualDensity.compact,
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                    ),
                                    unselectedWidgetColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: Checkbox(
                                    value: _model.checkboxSlValue ??=
                                        FFAppState()
                                                        .Cart
                                                        .motorSLComment !=
                                                    ''
                                            ? true
                                            : false,
                                    onChanged: (FFAppState()
                                                .Cart
                                                .cartItems
                                                .where((e) =>
                                                    e.specType == 'MOTOR')
                                                .toList()
                                                .length ==
                                            0)
                                        ? null
                                        : (newValue) async {
                                            safeSetState(() => _model
                                                .checkboxSlValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().updateCartStruct(
                                                (e) => e..motorSLEnabled = true,
                                              );
                                              safeSetState(() {});
                                              await actions
                                                  .calculateCartTotal();
                                              safeSetState(() {});
                                            } else {
                                              FFAppState().updateCartStruct(
                                                (e) => e
                                                  ..motorSLComment = null
                                                  ..motorSLFees = null
                                                  ..motorSLEnabled = false,
                                              );
                                              safeSetState(() {
                                                _model.textFieldSLTextController
                                                        ?.text =
                                                    FFAppState()
                                                        .Cart
                                                        .motorSLComment;
                                              });
                                              await actions
                                                  .calculateCartTotal();
                                              _model.updatePage(() {});
                                            }
                                          },
                                    side: (FlutterFlowTheme.of(context)
                                                .alternate !=
                                            null)
                                        ? BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          )
                                        : null,
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor: (FFAppState()
                                                .Cart
                                                .cartItems
                                                .where((e) =>
                                                    e.specType == 'MOTOR')
                                                .toList()
                                                .length ==
                                            0)
                                        ? FlutterFlowTheme.of(context).grey10
                                        : FlutterFlowTheme.of(context).info,
                                  ),
                                ),
                              ],
                            ),
                            if (_model.checkboxSlValue ?? true)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: TextFormField(
                                    controller:
                                        _model.textFieldSLTextController,
                                    focusNode: _model.textFieldSLFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textFieldSLTextController',
                                      Duration(milliseconds: 100),
                                      () async {
                                        FFAppState().updateCartStruct(
                                          (e) => e
                                            ..motorSLComment = _model
                                                .textFieldSLTextController.text
                                            ..comment = _model
                                                .textFieldMessageTextController
                                                .text,
                                        );
                                      },
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText:
                                          'Enter a custom Motor Shaft length.',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts:
                                                !FlutterFlowTheme.of(context)
                                                    .labelSmallIsCustom,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .labelSmallIsCustom,
                                        ),
                                    maxLines: null,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model
                                        .textFieldSLTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                          ].divide(SizedBox(height: 14.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 24.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(16.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(14.0, 24.0, 14.0, 24.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Additional Notes',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                        Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: _model.textFieldMessageTextController,
                              focusNode: _model.textFieldMessageFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textFieldMessageTextController',
                                Duration(milliseconds: 100),
                                () async {
                                  FFAppState().updateCartStruct(
                                    (e) => e
                                      ..motorSLComment =
                                          _model.textFieldSLTextController.text
                                      ..comment = _model
                                          .textFieldMessageTextController.text,
                                  );
                                },
                              ),
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                hintText:
                                    'Write Order Notes or Special Instructions',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelSmallFamily,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .labelSmallIsCustom,
                                    ),
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelSmallFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelSmallIsCustom,
                                  ),
                              maxLines: 10,
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model
                                  .textFieldMessageTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 24.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(16.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(14.0, 24.0, 14.0, 24.0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Order Summary',
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                lineHeight: 1.4,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleMediumIsCustom,
                              ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            wrapWithModel(
                              model: _model.summaryRowModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: SummaryRowWidget(
                                label: 'Subtotal',
                                value: FFAppState().Cart.subtotal.toString(),
                              ),
                            ),
                            if ((_model.checkboxSlValue == true) ||
                                (FFAppState().Cart.motorSLFees != 0.0) ||
                                (FFAppState().Cart.motorSLEnabled == true))
                              wrapWithModel(
                                model: _model.summaryRowModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: SummaryRowWidget(
                                  label: 'Motor Shaft Cut fee',
                                  value:
                                      FFAppState().Cart.motorSLFees.toString(),
                                ),
                              ),
                            wrapWithModel(
                              model: _model.summaryRowModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: SummaryRowWidget(
                                label: 'Estimated Tax',
                                value: FFAppState().Cart.tax.toString(),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.summaryRowModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: SummaryRowWidget(
                                label: 'Shipping',
                                value: FFAppState().Cart.shipping.toString(),
                              ),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                        Divider(
                          height: 16.0,
                          thickness: 1.0,
                          indent: 0.0,
                          endIndent: 0.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Total',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    lineHeight: 1.3,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                            Text(
                              '\$${FFAppState().Cart.total.toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w800,
                                    lineHeight: 1.3,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                          ],
                        ),
                        Container(
                          height: 8.0,
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (FFAppState().Cart.cartItems.isNotEmpty) {
                              FFAppState().updateCartStruct(
                                (e) => e
                                  ..comment =
                                      _model.textFieldMessageTextController.text
                                  ..motorSLComment =
                                      _model.textFieldSLTextController.text
                                  ..motorSLEnabled =
                                      _model.textFieldSLTextController
                                                      .text !=
                                                  ''
                                          ? true
                                          : false,
                              );
                              await actions.calculateCartTotal();

                              context.pushNamed(
                                  GSecurePaymentCheckoutWidget.routeName);
                            }
                          },
                          child: wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Button6Widget(
                              content: 'Continue to Payment',
                              icon_present: false,
                              icon_end: Icon(
                                Icons.arrow_forward_rounded,
                                color: FlutterFlowTheme.of(context).onPrimary,
                                size: 14.0,
                              ),
                              icon_end_present: true,
                              variant: 'primary',
                              size: 'large',
                              full_width: true,
                              loading: false,
                              disabled: false,
                            ),
                          ),
                        ),
                        Container(
                          height: 8.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.lock_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Secure 256-bit SSL encrypted checkout',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              lineHeight: 1.2,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.local_shipping_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 16.0,
                                      ),
                                      Text(
                                        'Free delivery expected by Oct 24th',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              lineHeight: 1.2,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 16.0)),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
