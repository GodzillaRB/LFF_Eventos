// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<dynamic> eventToJSON(
    String title,
    DateTime startTime,
    DateTime endTime,
    String? description,
    List<String>
        emails // Agregamos la lista de correos electrónicos como parámetro
    ) async {
  final json = {
    'summary': title,
    'description': description,
    'start': {'dateTime': startTime.toUtc().toIso8601String()},
    'end': {'dateTime': endTime.toUtc().toIso8601String()},
    'attendees': emails
        .map((email) => {'email': email})
        .toList(), // Corregimos la creación de la lista de asistentes
  };
  return json;
}
