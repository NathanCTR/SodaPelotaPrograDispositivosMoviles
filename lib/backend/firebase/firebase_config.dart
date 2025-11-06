import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA9KlGTXwxTBXY6ZwaHSf_GyAArgUFy57M",
            authDomain: "sodapelota-2c3ba.firebaseapp.com",
            projectId: "sodapelota-2c3ba",
            storageBucket: "sodapelota-2c3ba.firebasestorage.app",
            messagingSenderId: "670710967769",
            appId: "1:670710967769:web:0497c1a2e23860a1bbbdc8"));
  } else {
    await Firebase.initializeApp();
  }
}
