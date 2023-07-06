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
    apiKey: 'AIzaSyA0zcgBJgH0J0r36q6GtIQr4tUl3El0b5k',
    appId: '1:874486662058:web:c318aa8d795fbbbc3a21d3',
    messagingSenderId: '874486662058',
    projectId: 'carbon-footprint-monitor',
    authDomain: 'carbon-footprint-monitor.firebaseapp.com',
    storageBucket: 'carbon-footprint-monitor.appspot.com',
    measurementId: 'G-WGME7QQK4T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7P4o8zqFOKCc43YYCQHdRHy48Uu8xnk8',
    appId: '1:874486662058:android:98d236ad33a18ff73a21d3',
    messagingSenderId: '874486662058',
    projectId: 'carbon-footprint-monitor',
    storageBucket: 'carbon-footprint-monitor.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCDUkbBz0mnMWQ3NvetlFAGpzwRsFwjJEM',
    appId: '1:874486662058:ios:48d6b4793351188f3a21d3',
    messagingSenderId: '874486662058',
    projectId: 'carbon-footprint-monitor',
    storageBucket: 'carbon-footprint-monitor.appspot.com',
    iosClientId: '874486662058-amre9uqq5gqf0k57idplouj84kvion6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.sihTeamGolf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCDUkbBz0mnMWQ3NvetlFAGpzwRsFwjJEM',
    appId: '1:874486662058:ios:48d6b4793351188f3a21d3',
    messagingSenderId: '874486662058',
    projectId: 'carbon-footprint-monitor',
    storageBucket: 'carbon-footprint-monitor.appspot.com',
    iosClientId: '874486662058-amre9uqq5gqf0k57idplouj84kvion6b.apps.googleusercontent.com',
    iosBundleId: 'com.example.sihTeamGolf',
  );
}
