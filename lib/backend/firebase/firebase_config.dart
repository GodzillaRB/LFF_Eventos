import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDaHHM-QnGrbRw5wUasS0NfCFXx9mqTr2E",
            authDomain: "lffeventos.firebaseapp.com",
            projectId: "lffeventos",
            storageBucket: "lffeventos.appspot.com",
            messagingSenderId: "992500853009",
            appId: "1:992500853009:web:df0cbaf8b2813b47e0c4b0"));
  } else {
    await Firebase.initializeApp();
  }
}
