import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/agregar_material/agregar_material_widget.dart';
import '/components/barra_navegacion/barra_navegacion_widget.dart';
import '/components/editar_material/editar_material_widget.dart';
import '/components/notificaciones/notificaciones_widget.dart';
import '/components/profile/profile_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'materiales_widget.dart' show MaterialesWidget;
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MaterialesModel extends FlutterFlowModel<MaterialesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BarraNavegacion component.
  late BarraNavegacionModel barraNavegacionModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<MaterialesRecord>();

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
