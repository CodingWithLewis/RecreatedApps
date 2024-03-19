import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCZPNA0w0Z0RL5FLUJ3CbVmNBEJc8JAiRc",
            authDomain: "aiphotos-fc599.firebaseapp.com",
            projectId: "aiphotos-fc599",
            storageBucket: "aiphotos-fc599.appspot.com",
            messagingSenderId: "50168843149",
            appId: "1:50168843149:web:b2e589f1b6666fc416cbc4",
            measurementId: "G-8MEBG8GMY6"));
  } else {
    await Firebase.initializeApp();
  }
}
