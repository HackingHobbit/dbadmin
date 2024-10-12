import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCHVRpE8hGurx73rfAlCQV5e_TRPwXnTlk",
            authDomain: "diginifi.firebaseapp.com",
            projectId: "diginifi",
            storageBucket: "diginifi.appspot.com",
            messagingSenderId: "808749677810",
            appId: "1:808749677810:web:fd12c2c2253b8d2645246b",
            measurementId: "G-L19X4ZMTBG"));
  } else {
    await Firebase.initializeApp();
  }
}
