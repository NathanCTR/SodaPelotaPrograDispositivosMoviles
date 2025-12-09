import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtcorreo widget.
  FocusNode? txtcorreoFocusNode;
  TextEditingController? txtcorreoTextController;
  String? Function(BuildContext, String?)? txtcorreoTextControllerValidator;
  // State field(s) for txtcontrasena widget.
  FocusNode? txtcontrasenaFocusNode;
  TextEditingController? txtcontrasenaTextController;
  late bool txtcontrasenaVisibility;
  String? Function(BuildContext, String?)? txtcontrasenaTextControllerValidator;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtcontrasenaVisibility = false;
  }

  @override
  void dispose() {
    txtcorreoFocusNode?.dispose();
    txtcorreoTextController?.dispose();

    txtcontrasenaFocusNode?.dispose();
    txtcontrasenaTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();
  }
}
