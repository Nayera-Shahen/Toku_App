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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDxaHX5hHcXeZ_LfilcSwpPRGceEYUwxd4',
    appId: '1:993582396849:web:5be56ce47781a1baab7990',
    messagingSenderId: '993582396849',
    projectId: 'auth-toku-app',
    authDomain: 'auth-toku-app.firebaseapp.com',
    storageBucket: 'auth-toku-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcPNzYM4luJEfoP32yhnQWKfcUylXZZWw',
    appId: '1:993582396849:android:c2dc1463014cacf7ab7990',
    messagingSenderId: '993582396849',
    projectId: 'auth-toku-app',
    storageBucket: 'auth-toku-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMvPLT6mnpz14IYEvu-ckduAzCX_I9aaA',
    appId: '1:993582396849:ios:9556ae44aec0a086ab7990',
    messagingSenderId: '993582396849',
    projectId: 'auth-toku-app',
    storageBucket: 'auth-toku-app.appspot.com',
    iosBundleId: 'com.example.toku',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDxaHX5hHcXeZ_LfilcSwpPRGceEYUwxd4',
    appId: '1:993582396849:web:8178192a0b99437eab7990',
    messagingSenderId: '993582396849',
    projectId: 'auth-toku-app',
    authDomain: 'auth-toku-app.firebaseapp.com',
    storageBucket: 'auth-toku-app.appspot.com',
  );
}