import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA4oUNDEyM5eFtcrnU0gZOl4qzZM4tIgq0",
            authDomain: "sleep-app-mrlfi4.firebaseapp.com",
            projectId: "sleep-app-mrlfi4",
            storageBucket: "sleep-app-mrlfi4.appspot.com",
            messagingSenderId: "1023025398548",
            appId: "1:1023025398548:web:b55529832d90c859d9f801"));
  } else {
    await Firebase.initializeApp();
  }
}
