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
    apiKey: 'AIzaSyCzTFLkNE-wqOKpm97nm1j4F58lq02rCtE',
    appId: '1:510569646351:web:833a38907b298fa824967a',
    messagingSenderId: '510569646351',
    projectId: 'lookupdemoapp-dbae6',
    authDomain: 'lookupdemoapp-dbae6.firebaseapp.com',
    storageBucket: 'lookupdemoapp-dbae6.appspot.com',
    measurementId: 'G-D5FDFE23KJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDY42VjMeDwUV-m9T1IJ2NU0kCqxNMAxBo',
    appId: '1:510569646351:android:d9c472fe8665aa9924967a',
    messagingSenderId: '510569646351',
    projectId: 'lookupdemoapp-dbae6',
    storageBucket: 'lookupdemoapp-dbae6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBw2xV0fzd-gWinsj4d2o7IGaEVbgUGGTM',
    appId: '1:510569646351:ios:5af39aae33a3d80e24967a',
    messagingSenderId: '510569646351',
    projectId: 'lookupdemoapp-dbae6',
    storageBucket: 'lookupdemoapp-dbae6.appspot.com',
    iosBundleId: 'com.example.lookUpDemoApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBw2xV0fzd-gWinsj4d2o7IGaEVbgUGGTM',
    appId: '1:510569646351:ios:d34a012aed50440524967a',
    messagingSenderId: '510569646351',
    projectId: 'lookupdemoapp-dbae6',
    storageBucket: 'lookupdemoapp-dbae6.appspot.com',
    iosBundleId: 'com.example.lookUpDemoApp.RunnerTests',
  );
}
