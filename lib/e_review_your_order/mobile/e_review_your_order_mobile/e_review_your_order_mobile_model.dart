import '/backend/backend.dart';
import '/e_review_your_order/mobile/button6/button6_widget.dart';
import '/e_review_your_order/mobile/summary_row/summary_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'e_review_your_order_mobile_widget.dart'
    show EReviewYourOrderMobileWidget;
import 'package:flutter/material.dart';

class EReviewYourOrderMobileModel
    extends FlutterFlowModel<EReviewYourOrderMobileWidget> {
  ///  Local state fields for this component.

  List<ItemsRecord> toolsCS = [];
  void addToToolsCS(ItemsRecord item) => toolsCS.add(item);
  void removeFromToolsCS(ItemsRecord item) => toolsCS.remove(item);
  void removeAtIndexFromToolsCS(int index) => toolsCS.removeAt(index);
  void insertAtIndexInToolsCS(int index, ItemsRecord item) =>
      toolsCS.insert(index, item);
  void updateToolsCSAtIndex(int index, Function(ItemsRecord) updateFn) =>
      toolsCS[index] = updateFn(toolsCS[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<ItemsRecord, bool> checkboxValueMap1 = {};
  List<ItemsRecord> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  SettingsRecord? tax;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  SettingsRecord? motorSl;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  SettingsRecord? taxOff;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  SettingsRecord? sl;
  // Stores action output result for [Firestore Query - Query a collection] action in Checkbox widget.
  SettingsRecord? taxOn;
  // State field(s) for TextField-SL widget.
  FocusNode? textFieldSLFocusNode;
  TextEditingController? textFieldSLTextController;
  String? Function(BuildContext, String?)? textFieldSLTextControllerValidator;
  // State field(s) for TextField-Message widget.
  FocusNode? textFieldMessageFocusNode;
  TextEditingController? textFieldMessageTextController;
  String? Function(BuildContext, String?)?
      textFieldMessageTextControllerValidator;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel1;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel2;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel3;
  // Model for SummaryRow.
  late SummaryRowModel summaryRowModel4;
  // Model for Button.
  late Button6Model buttonModel;

  @override
  void initState(BuildContext context) {
    summaryRowModel1 = createModel(context, () => SummaryRowModel());
    summaryRowModel2 = createModel(context, () => SummaryRowModel());
    summaryRowModel3 = createModel(context, () => SummaryRowModel());
    summaryRowModel4 = createModel(context, () => SummaryRowModel());
    buttonModel = createModel(context, () => Button6Model());
  }

  @override
  void dispose() {
    textFieldSLFocusNode?.dispose();
    textFieldSLTextController?.dispose();

    textFieldMessageFocusNode?.dispose();
    textFieldMessageTextController?.dispose();

    summaryRowModel1.dispose();
    summaryRowModel2.dispose();
    summaryRowModel3.dispose();
    summaryRowModel4.dispose();
    buttonModel.dispose();
  }
}
