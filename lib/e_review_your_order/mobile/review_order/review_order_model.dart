import '/e_review_your_order/mobile/e_review_your_order_mobile/e_review_your_order_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_order_widget.dart' show ReviewOrderWidget;
import 'package:flutter/material.dart';

class ReviewOrderModel extends FlutterFlowModel<ReviewOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for E_Review_your_order_mobile component.
  late EReviewYourOrderMobileModel eReviewYourOrderMobileModel;

  @override
  void initState(BuildContext context) {
    eReviewYourOrderMobileModel =
        createModel(context, () => EReviewYourOrderMobileModel());
  }

  @override
  void dispose() {
    eReviewYourOrderMobileModel.dispose();
  }
}
