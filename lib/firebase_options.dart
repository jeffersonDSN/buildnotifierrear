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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCkAWF90wB-qvCi22QlWEwI3CVhodZ0xGQ',
    appId: '1:1056176794632:web:9324eda2dde955a8a375bd',
    messagingSenderId: '1056176794632',
    projectId: 'buildnotifier-e5c6e',
    authDomain: 'buildnotifier-e5c6e.firebaseapp.com',
    storageBucket: 'buildnotifier-e5c6e.appspot.com',
    measurementId: 'G-V77G6QNPJR',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDj0YeQS5ygbjtGbYiIhDKwcTx_1CfM1Uk',
    appId: '1:1056176794632:ios:f2452d29082d91eca375bd',
    messagingSenderId: '1056176794632',
    projectId: 'buildnotifier-e5c6e',
    storageBucket: 'buildnotifier-e5c6e.appspot.com',
    iosBundleId: 'com.example.buildnotifierrear',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCkAWF90wB-qvCi22QlWEwI3CVhodZ0xGQ',
    appId: '1:1056176794632:web:04375d29208c2b2ea375bd',
    messagingSenderId: '1056176794632',
    projectId: 'buildnotifier-e5c6e',
    authDomain: 'buildnotifier-e5c6e.firebaseapp.com',
    storageBucket: 'buildnotifier-e5c6e.appspot.com',
    measurementId: 'G-52ZPXB989S',
  );
}
