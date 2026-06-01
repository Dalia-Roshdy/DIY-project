import '/e_review_your_order/mobile/e_review_your_order_mobile/e_review_your_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'review_order_model.dart';
export 'review_order_model.dart';

class ReviewOrderWidget extends StatefulWidget {
  const ReviewOrderWidget({super.key});

  static String routeName = 'ReviewOrder';
  static String routePath = '/reviewOrder';

  @override
  State<ReviewOrderWidget> createState() => _ReviewOrderWidgetState();
}

class _ReviewOrderWidgetState extends State<ReviewOrderWidget> {
  late ReviewOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewOrderModel());

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
        body: wrapWithModel(
          model: _model.eReviewYourOrderMobileModel,
          updateCallback: () => safeSetState(() {}),
          child: EReviewYourOrderMobileWidget(),
        ),
      ),
    );
  }
}
