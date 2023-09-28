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
    apiKey: 'AIzaSyDp9cAGobvmanD7H69Tz-EHvup5jBKmHAM',
    appId: '1:962922380317:web:5c87375b12d496fefa5af4',
    messagingSenderId: '962922380317',
    projectId: 'fluttermaps-2ff5a',
    authDomain: 'fluttermaps-2ff5a.firebaseapp.com',
    storageBucket: 'fluttermaps-2ff5a.appspot.com',
    measurementId: 'G-VDH1EEK9QR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKYtFDtkIPvLFOctONOLTwl4QNahC3IzI',
    appId: '1:962922380317:android:27c8856e3e908355fa5af4',
    messagingSenderId: '962922380317',
    projectId: 'fluttermaps-2ff5a',
    storageBucket: 'fluttermaps-2ff5a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCGfq00WL3ig6sN0H1po2EBur2ELr9qhtA',
    appId: '1:962922380317:ios:a5214989b075fbaefa5af4',
    messagingSenderId: '962922380317',
    projectId: 'fluttermaps-2ff5a',
    storageBucket: 'fluttermaps-2ff5a.appspot.com',
    iosBundleId: 'com.example.flutterMaps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCGfq00WL3ig6sN0H1po2EBur2ELr9qhtA',
    appId: '1:962922380317:ios:c2c22fcc2bc39e44fa5af4',
    messagingSenderId: '962922380317',
    projectId: 'fluttermaps-2ff5a',
    storageBucket: 'fluttermaps-2ff5a.appspot.com',
    iosBundleId: 'com.example.flutterMaps.RunnerTests',
  );
}
