// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signInWithGoogle() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '1061162960801-u0un3p6q6brmk7j48ncuvm4r6ahhjdtd.apps.googleusercontent.com',
      scopes: <String>[
        'https://www.googleapis.com/auth/calendar',
        'https://www.googleapis.com/auth/calendar.events',
      ],
    );

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    return googleSignInAuthentication.accessToken;
  } catch (error) {
    print('Error de autenticación con Google');
    return null;
  }
}
