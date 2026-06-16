import '/backend/schema/enums/enums.dart';
import '/components/button2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 's18_filter_repair_parts_desktop_widget.dart'
    show S18FilterRepairPartsDesktopWidget;
import 'package:flutter/material.dart';

class S18FilterRepairPartsDesktopModel
    extends FlutterFlowModel<S18FilterRepairPartsDesktopWidget> {
  ///  Local state fields for this component.

  Parts? selectedPart;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-volt widget.
  FocusNode? textFieldVoltFocusNode;
  TextEditingController? textFieldVoltTextController;
  String? Function(BuildContext, String?)? textFieldVoltTextControllerValidator;
  // State field(s) for TextField-hp widget.
  FocusNode? textFieldHpFocusNode;
  TextEditingController? textFieldHpTextController;
  String? Function(BuildContext, String?)? textFieldHpTextControllerValidator;
  // State field(s) for TextField-rpm widget.
  FocusNode? textFieldRpmFocusNode;
  TextEditingController? textFieldRpmTextController;
  String? Function(BuildContext, String?)? textFieldRpmTextControllerValidator;
  // State field(s) for DropDown-rotation widget.
  String? dropDownRotationValue;
  FormFieldController<String>? dropDownRotationValueController;
  // Model for Button.
  late Button2Model buttonModel1;
  // State field(s) for TextField-Rvolt widget.
  FocusNode? textFieldRvoltFocusNode;
  TextEditingController? textFieldRvoltTextController;
  String? Function(BuildContext, String?)?
      textFieldRvoltTextControllerValidator;
  // State field(s) for TextField-apm widget.
  FocusNode? textFieldApmFocusNode;
  TextEditingController? textFieldApmTextController;
  String? Function(BuildContext, String?)? textFieldApmTextControllerValidator;
  // State field(s) for TextField-CoilV widget.
  FocusNode? textFieldCoilVFocusNode;
  TextEditingController? textFieldCoilVTextController;
  String? Function(BuildContext, String?)?
      textFieldCoilVTextControllerValidator;
  // State field(s) for TextField-nop widget.
  FocusNode? textFieldNopFocusNode;
  TextEditingController? textFieldNopTextController;
  String? Function(BuildContext, String?)? textFieldNopTextControllerValidator;
  // Model for Button.
  late Button2Model buttonModel2;
  // State field(s) for TextField-MFD1 widget.
  FocusNode? textFieldMFD1FocusNode;
  TextEditingController? textFieldMFD1TextController;
  String? Function(BuildContext, String?)? textFieldMFD1TextControllerValidator;
  // State field(s) for TextField-MFD2 widget.
  FocusNode? textFieldMFD2FocusNode;
  TextEditingController? textFieldMFD2TextController;
  String? Function(BuildContext, String?)? textFieldMFD2TextControllerValidator;
  // State field(s) for TextField-cap-volt widget.
  FocusNode? textFieldCapVoltFocusNode;
  TextEditingController? textFieldCapVoltTextController;
  String? Function(BuildContext, String?)?
      textFieldCapVoltTextControllerValidator;
  // State field(s) for DropDown-type widget.
  String? dropDownTypeValue;
  FormFieldController<String>? dropDownTypeValueController;
  // State field(s) for DD-shap widget.
  String? dDShapValue;
  FormFieldController<String>? dDShapValueController;
  // Model for Button.
  late Button2Model buttonModel3;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button2Model());
    buttonModel2 = createModel(context, () => Button2Model());
    buttonModel3 = createModel(context, () => Button2Model());
  }

  @override
  void dispose() {
    textFieldVoltFocusNode?.dispose();
    textFieldVoltTextController?.dispose();

    textFieldHpFocusNode?.dispose();
    textFieldHpTextController?.dispose();

    textFieldRpmFocusNode?.dispose();
    textFieldRpmTextController?.dispose();

    buttonModel1.dispose();
    textFieldRvoltFocusNode?.dispose();
    textFieldRvoltTextController?.dispose();

    textFieldApmFocusNode?.dispose();
    textFieldApmTextController?.dispose();

    textFieldCoilVFocusNode?.dispose();
    textFieldCoilVTextController?.dispose();

    textFieldNopFocusNode?.dispose();
    textFieldNopTextController?.dispose();

    buttonModel2.dispose();
    textFieldMFD1FocusNode?.dispose();
    textFieldMFD1TextController?.dispose();

    textFieldMFD2FocusNode?.dispose();
    textFieldMFD2TextController?.dispose();

    textFieldCapVoltFocusNode?.dispose();
    textFieldCapVoltTextController?.dispose();

    buttonModel3.dispose();
  }
}
