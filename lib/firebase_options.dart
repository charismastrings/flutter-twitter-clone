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
    apiKey: 'AIzaSyCvfLheSDNzYiyEXmg9FWPHWLUCixywifs',
    appId: '1:932114045753:web:5b7faf54e494d24b32e6e8',
    messagingSenderId: '932114045753',
    projectId: 'twittercloneteguh',
    authDomain: 'twittercloneteguh.firebaseapp.com',
    storageBucket: 'twittercloneteguh.appspot.com',
    measurementId: 'G-H4GD6RT0L9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNHr5ekpo_vzwdiFHJXu4CS7ruB-rAFlA',
    appId: '1:932114045753:android:6b417663966aac2432e6e8',
    messagingSenderId: '932114045753',
    projectId: 'twittercloneteguh',
    storageBucket: 'twittercloneteguh.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQyNnF_L3LEPFHcbEJp8Tzg-ZjqXIeOWA',
    appId: '1:932114045753:ios:569f849335f672d532e6e8',
    messagingSenderId: '932114045753',
    projectId: 'twittercloneteguh',
    storageBucket: 'twittercloneteguh.appspot.com',
    iosBundleId: 'com.example.twitterClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCvfLheSDNzYiyEXmg9FWPHWLUCixywifs',
    appId: '1:932114045753:web:5337ab4e9423418232e6e8',
    messagingSenderId: '932114045753',
    projectId: 'twittercloneteguh',
    authDomain: 'twittercloneteguh.firebaseapp.com',
    storageBucket: 'twittercloneteguh.appspot.com',
    measurementId: 'G-TG1RCJ6YTR',
  );
}