import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAkagtCLvqRO4NW1NpcPQKjFvG2Xa5qB6E",
            authDomain: "yuka-clone-7w6i2x.firebaseapp.com",
            projectId: "yuka-clone-7w6i2x",
            storageBucket: "yuka-clone-7w6i2x.appspot.com",
            messagingSenderId: "640051667045",
            appId: "1:640051667045:web:60d4d0f211eb339a3a668c"));
  } else {
    await Firebase.initializeApp();
  }
}
