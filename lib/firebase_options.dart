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
    apiKey: 'AIzaSyARiljgKhEg4xD5dqMF3fG1tKYzN-c0l5Q',
    appId: '1:858966396428:web:8d1a9350200ed3b98fa829',
    messagingSenderId: '858966396428',
    projectId: 'chat-app-2b386',
    authDomain: 'chat-app-2b386.firebaseapp.com',
    storageBucket: 'chat-app-2b386.firebasestorage.app',
    measurementId: 'G-CGZEF5BR23',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcYP__cLeDlSEAaxaA5kxAMhMXXlK5hww',
    appId: '1:858966396428:android:af45816681de85748fa829',
    messagingSenderId: '858966396428',
    projectId: 'chat-app-2b386',
    storageBucket: 'chat-app-2b386.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCp67auxl3s7z_DQhB8d-5qN3Go9QDzKos',
    appId: '1:858966396428:ios:346799722eb59bb58fa829',
    messagingSenderId: '858966396428',
    projectId: 'chat-app-2b386',
    storageBucket: 'chat-app-2b386.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCp67auxl3s7z_DQhB8d-5qN3Go9QDzKos',
    appId: '1:858966396428:ios:346799722eb59bb58fa829',
    messagingSenderId: '858966396428',
    projectId: 'chat-app-2b386',
    storageBucket: 'chat-app-2b386.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyARiljgKhEg4xD5dqMF3fG1tKYzN-c0l5Q',
    appId: '1:858966396428:web:52af421cc16c97448fa829',
    messagingSenderId: '858966396428',
    projectId: 'chat-app-2b386',
    authDomain: 'chat-app-2b386.firebaseapp.com',
    storageBucket: 'chat-app-2b386.firebasestorage.app',
    measurementId: 'G-BD154HK7RF',
  );
}
