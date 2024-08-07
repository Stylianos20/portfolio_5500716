// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
///

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDJDtWd2vtDUaFVAuAvA6n1DO2vR1c5lt4',
    appId: '1:1053808531443:web:0369564f9fcee5e3ef6486',
    messagingSenderId: '1053808531443',
    projectId: 'portfolio5500716',
    authDomain: 'portfolio5500716.firebaseapp.com',
    storageBucket: 'portfolio5500716.appspot.com',
    measurementId: 'G-G56D03CFNP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqIUpmgWuquKyHEmXWKdyV5lxvbo9jonY',
    appId: '1:1053808531443:android:426f4ea042cdaa21ef6486',
    messagingSenderId: '1053808531443',
    projectId: 'portfolio5500716',
    storageBucket: 'portfolio5500716.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNCQ3Aq1SmFq_l1vsC35yDYFv3JvDSM-A',
    appId: '1:1053808531443:ios:81bff91dfbf91fd3ef6486',
    messagingSenderId: '1053808531443',
    projectId: 'portfolio5500716',
    storageBucket: 'portfolio5500716.appspot.com',
    iosBundleId: 'com.example.styliportfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNCQ3Aq1SmFq_l1vsC35yDYFv3JvDSM-A',
    appId: '1:1053808531443:ios:81bff91dfbf91fd3ef6486',
    messagingSenderId: '1053808531443',
    projectId: 'portfolio5500716',
    storageBucket: 'portfolio5500716.appspot.com',
    iosBundleId: 'com.example.styliportfolio',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDJDtWd2vtDUaFVAuAvA6n1DO2vR1c5lt4',
    appId: '1:1053808531443:web:f4ffe4646570a2a3ef6486',
    messagingSenderId: '1053808531443',
    projectId: 'portfolio5500716',
    authDomain: 'portfolio5500716.firebaseapp.com',
    storageBucket: 'portfolio5500716.appspot.com',
    measurementId: 'G-TXMVG5TWSW',
  );

}