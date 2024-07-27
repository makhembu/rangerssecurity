import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBQutl3FfgjLF6bnh_QTI4E78lWSAiUq8s",
            authDomain: "visigate-8becd.firebaseapp.com",
            projectId: "visigate-8becd",
            storageBucket: "visigate-8becd.appspot.com",
            messagingSenderId: "941667670947",
            appId: "1:941667670947:web:690b6a7be5179914345816",
            measurementId: "G-PWTVM9E81C"));
  } else {
    await Firebase.initializeApp();
  }
}
