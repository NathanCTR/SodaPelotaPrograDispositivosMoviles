import '/flutter_flow/flutter_flow_util.dart';
import 'bs_agregar_producto_widget.dart' show BsAgregarProductoWidget;
import 'package:flutter/material.dart';

class BsAgregarProductoModel extends FlutterFlowModel<BsAgregarProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
