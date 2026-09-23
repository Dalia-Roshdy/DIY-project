import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'order_item_row4_model.dart';
export 'order_item_row4_model.dart';

class OrderItemRow4Widget extends StatefulWidget {
  const OrderItemRow4Widget({
    super.key,
    bool? guide,
    String? imgDesc,
    String? name,
    String? price,
    String? sku,
    this.qty,
  })  : this.guide = guide ?? true,
        this.imgDesc =
            imgDesc ?? 'https://dimg.dreamflow.cloud/v1/image/capacitor%20part',
        this.name = name ?? 'Universal Dual Run Capacitor',
        this.price = price ?? '\$45.00',
        this.sku = sku ?? 'SKU: AC-CAP-45-5';

  final bool guide;
  final String imgDesc;
  final String name;
  final String price;
  final String sku;
  final int? qty;

  @override
  State<OrderItemRow4Widget> createState() => _OrderItemRow4WidgetState();
}

class _OrderItemRow4WidgetState extends State<OrderItemRow4Widget> {
  late OrderItemRow4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderItemRow4Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: FlutterFlowTheme.of(context).primaryText,
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              valueOrDefault<String>(
                widget.name,
                'Universal Dual Run Capacitor',
              ),
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).titleMediumFamily,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.2,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).titleMediumIsCustom,
                  ),
            ),
            Text(
              valueOrDefault<String>(
                'SKU: ${widget.sku}',
                'SKU: SKU: AC-CAP-45-5',
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    lineHeight: 1.5,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodySmallIsCustom,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: (FFMainAxisAlignment.spaceAround).flutterValue,
              children: [
                Text(
                  'Qty: ${widget.qty?.toString()}',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).titleMediumIsCustom,
                      ),
                ),
                Text(
                  'Unit Price \$: ${widget.price}',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        lineHeight: 1.2,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).titleMediumIsCustom,
                      ),
                ),
              ],
            ),
          ]
              .divide(SizedBox(height: 10.0))
              .addToStart(SizedBox(height: 10.0))
              .addToEnd(SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
