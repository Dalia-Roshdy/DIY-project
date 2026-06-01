import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'order_and_review_summary_model.dart';
export 'order_and_review_summary_model.dart';

class OrderAndReviewSummaryWidget extends StatefulWidget {
  const OrderAndReviewSummaryWidget({super.key});

  static String routeName = 'Order_and_Review_Summary';
  static String routePath = '/orderAndReviewSummary';

  @override
  State<OrderAndReviewSummaryWidget> createState() =>
      _OrderAndReviewSummaryWidgetState();
}

class _OrderAndReviewSummaryWidgetState
    extends State<OrderAndReviewSummaryWidget> {
  late OrderAndReviewSummaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderAndReviewSummaryModel());

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
      ),
    );
  }
}
