import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editar_material_solicitado_widget.dart'
    show EditarMaterialSolicitadoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarMaterialSolicitadoModel
    extends FlutterFlowModel<EditarMaterialSolicitadoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Cantidad widget.
  FocusNode? cantidadFocusNode;
  TextEditingController? cantidadTextController;
  String? Function(BuildContext, String?)? cantidadTextControllerValidator;
  String? _cantidadTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es requerido';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cantidadTextControllerValidator = _cantidadTextControllerValidator;
  }

  @override
  void dispose() {
    cantidadFocusNode?.dispose();
    cantidadTextController?.dispose();
  }
}
