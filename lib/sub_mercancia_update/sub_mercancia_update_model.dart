import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sub_mercancia_update_widget.dart' show SubMercanciaUpdateWidget;
import 'package:flutter/material.dart';

class SubMercanciaUpdateModel
    extends FlutterFlowModel<SubMercanciaUpdateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtCombo widget.
  FocusNode? txtComboFocusNode;
  TextEditingController? txtComboTextController;
  String? Function(BuildContext, String?)? txtComboTextControllerValidator;
  // State field(s) for txtcodigo widget.
  FocusNode? txtcodigoFocusNode;
  TextEditingController? txtcodigoTextController;
  String? Function(BuildContext, String?)? txtcodigoTextControllerValidator;
  // State field(s) for txtprecio widget.
  FocusNode? txtprecioFocusNode;
  TextEditingController? txtprecioTextController;
  String? Function(BuildContext, String?)? txtprecioTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  bool isDataUploading_uploadDataD34 = false;
  FFUploadedFile uploadedLocalFile_uploadDataD34 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataD34 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtComboFocusNode?.dispose();
    txtComboTextController?.dispose();

    txtcodigoFocusNode?.dispose();
    txtcodigoTextController?.dispose();

    txtprecioFocusNode?.dispose();
    txtprecioTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
