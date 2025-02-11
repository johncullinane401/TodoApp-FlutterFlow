import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDvEF72n4YllglwjJDn8sJBbYkM8Juxscc",
            authDomain: "todo-2geilb.firebaseapp.com",
            projectId: "todo-2geilb",
            storageBucket: "todo-2geilb.firebasestorage.app",
            messagingSenderId: "533722167600",
            appId: "1:533722167600:web:fdf8d2407f22080a16f0f5",
            measurementId: "G-RZG0JMWLT9"));
  } else {
    await Firebase.initializeApp();
  }
}
