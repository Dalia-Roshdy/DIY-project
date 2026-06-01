import '/e_review_your_order/mobile/button6/button6_widget.dart';
import '/e_review_your_order/mobile/installation_kit_card/installation_kit_card_widget.dart';
import '/e_review_your_order/mobile/summary_row/summary_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'e_review_your_order_mobile_widget.dart'
    show EReviewYourOrderMobileWidget;
import 'package:flutter/material.dart';

class EReviewYourOrderMobileModel
    extends FlutterFlowModel<EReviewYourOrderMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for InstallationKitCard.
  late InstallationKitCardModel installationKitCardModel1;
  // Model for InstallationKitCard.
  late InstallationKitCardModel installationKitCardModel2;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel3;
  // Model for Button.
  late Button6Model buttonModel;

  @override
  void initState(BuildContext context) {
    installationKitCardModel1 =
        createModel(context, () => InstallationKitCardModel());
    installationKitCardModel2 =
        createModel(context, () => InstallationKitCardModel());
    summaryRowModel1 = createModel(context, () => SummaryRowModel());
    summaryRowModel2 = createModel(context, () => SummaryRowModel());
    summaryRowModel3 = createModel(context, () => SummaryRowModel());
    buttonModel = createModel(context, () => Button6Model());
  }

  @override
  void dispose() {
    installationKitCardModel1.dispose();
    installationKitCardModel2.dispose();
    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
    buttonModel.dispose();
  }
}
