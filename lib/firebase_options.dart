// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCV5lgF5HDQ8M_DdzpVZIxMilgQVwbrs8M',
    appId: '1:41284268898:web:8d6220f711532bb1f2f23b',
    messagingSenderId: '41284268898',
    projectId: 'emart-8d3e8',
    authDomain: 'emart-8d3e8.firebaseapp.com',
    storageBucket: 'emart-8d3e8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbJl0yoNBjWG8T_rj5ys7S4aduEH5rk2o',
    appId: '1:41284268898:android:23ca25dee7b411e9f2f23b',
    messagingSenderId: '41284268898',
    projectId: 'emart-8d3e8',
    storageBucket: 'emart-8d3e8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXof8drOeg0To8tDthvoG3i2nC5dJr_qE',
    appId: '1:41284268898:ios:efa2db817fc8db49f2f23b',
    messagingSenderId: '41284268898',
    projectId: 'emart-8d3e8',
    storageBucket: 'emart-8d3e8.appspot.com',
    iosBundleId: 'com.example.emartApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDXof8drOeg0To8tDthvoG3i2nC5dJr_qE',
    appId: '1:41284268898:ios:efa2db817fc8db49f2f23b',
    messagingSenderId: '41284268898',
    projectId: 'emart-8d3e8',
    storageBucket: 'emart-8d3e8.appspot.com',
    iosBundleId: 'com.example.emartApp',
  );
}
