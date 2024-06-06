import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/barra_navegacion/barra_navegacion_widget.dart';
import '/components/notificaciones/notificaciones_widget.dart';
import '/components/profile/profile_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'inicio_widget.dart' show InicioWidget;
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InicioModel extends FlutterFlowModel<InicioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BarraNavegacion component.
  late BarraNavegacionModel barraNavegacionModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {
    barraNavegacionModel = createModel(context, () => BarraNavegacionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    barraNavegacionModel.dispose();
  }
}
