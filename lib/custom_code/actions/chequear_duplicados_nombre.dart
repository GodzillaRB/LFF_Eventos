// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

Future<int> chequearDuplicadosNombre(
    BuildContext context, String nombre) async {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Comprueba si el nombre ya existe en la base de datos
  final QuerySnapshot result = await _db
      .collection(
          'users') // Asegúrate de usar el nombre correcto de la colección
      .where('nombre', isEqualTo: nombre)
      .limit(1)
      .get();

  // Si el nombre ya existe, muestra una alerta y no guarda el documento
  if (result.docs.isNotEmpty) {
    showDialog<dynamic>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nombre duplicado'),
          content: Text('El nombre ingresado ya existe.'),
          actions: <Widget>[
            TextButton(
              child: Text('Aceptar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    return 0; // Retorna 0 para indicar que no se guardó el documento
  } else {
    return 1; // Retorna 1 para indicar que se puede guardar el documento
  }
}
