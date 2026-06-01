import '/e_review_your_order/desktop/components/review_your_order_desktop/review_your_order_desktop_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_order_final_widget.dart' show ReviewOrderFinalWidget;
import 'package:flutter/material.dart';

class ReviewOrderFinalModel extends FlutterFlowModel<ReviewOrderFinalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Review_Your_Order_Desktop component.
  late ReviewYourOrderDesktopModel reviewYourOrderDesktopModel;

  @override
  void initState(BuildContext context) {
    reviewYourOrderDesktopModel =
        createModel(context, () => ReviewYourOrderDesktopModel());
  }

  @override
  void dispose() {
    reviewYourOrderDesktopModel.dispose();
  }
}
