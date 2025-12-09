import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'mercancia_widget.dart' show MercanciaWidget;
import 'package:flutter/material.dart';

class MercanciaModel extends FlutterFlowModel<MercanciaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtcombo widget.
  FocusNode? txtcomboFocusNode;
  TextEditingController? txtcomboTextController;
  String? Function(BuildContext, String?)? txtcomboTextControllerValidator;
  // State field(s) for txtcodigo widget.
  FocusNode? txtcodigoFocusNode;
  TextEditingController? txtcodigoTextController;
  String? Function(BuildContext, String?)? txtcodigoTextControllerValidator;
  // State field(s) for txtprecio widget.
  FocusNode? txtprecioFocusNode;
  TextEditingController? txtprecioTextController;
  String? Function(BuildContext, String?)? txtprecioTextControllerValidator;
  // State field(s) for txtDetail widget.
  FocusNode? txtDetailFocusNode;
  TextEditingController? txtDetailTextController;
  String? Function(BuildContext, String?)? txtDetailTextControllerValidator;
  bool isDataUploading_uploadDataD33 = false;
  FFUploadedFile uploadedLocalFile_uploadDataD33 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataD33 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtcomboFocusNode?.dispose();
    txtcomboTextController?.dispose();

    txtcodigoFocusNode?.dispose();
    txtcodigoTextController?.dispose();

    txtprecioFocusNode?.dispose();
    txtprecioTextController?.dispose();

    txtDetailFocusNode?.dispose();
    txtDetailTextController?.dispose();
  }
}
