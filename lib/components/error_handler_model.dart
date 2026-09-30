import '/c_components/button37/button37_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'error_handler_widget.dart' show ErrorHandlerWidget;
import 'package:flutter/material.dart';

class ErrorHandlerModel extends FlutterFlowModel<ErrorHandlerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button.
  late Button37Model buttonModel1;
  // Model for Button.
  late Button37Model buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => Button37Model());
    buttonModel2 = createModel(context, () => Button37Model());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
