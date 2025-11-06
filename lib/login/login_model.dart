import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtcorreo widget.
  FocusNode? txtcorreoFocusNode;
  TextEditingController? txtcorreoTextController;
  String? Function(BuildContext, String?)? txtcorreoTextControllerValidator;
  // State field(s) for txtcontrasena widget.
  FocusNode? txtcontrasenaFocusNode;
  TextEditingController? txtcontrasenaTextController;
  String? Function(BuildContext, String?)? txtcontrasenaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtcorreoFocusNode?.dispose();
    txtcorreoTextController?.dispose();

    txtcontrasenaFocusNode?.dispose();
    txtcontrasenaTextController?.dispose();
  }
}
