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
/// 
/// 
/// 
/// 
/// 
/// 
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBT7GaoH_JZCCAWkFm4A4Z_wwk1v1PqzqY',
    appId: '1:471134807759:web:e551c610a12424038ff9ba',
    messagingSenderId: '471134807759',
    projectId: 'floatimports-erp',
    authDomain: 'floatimports-erp.firebaseapp.com',
    storageBucket: 'floatimports-erp.appspot.com',
    measurementId: 'G-7GX16935G4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEDrCA5dPWaaZeRx-9VSaX1YMeUj-YOds',
    appId: '1:471134807759:android:50f4d36da40cb1828ff9ba',
    messagingSenderId: '471134807759',
    projectId: 'floatimports-erp',
    storageBucket: 'floatimports-erp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdIy-pbxJ4Ie4T9QfFvg441auBGP_U0vs',
    appId: '1:471134807759:ios:bb42abb4406b41b88ff9ba',
    messagingSenderId: '471134807759',
    projectId: 'floatimports-erp',
    storageBucket: 'floatimports-erp.appspot.com',
    iosClientId: '471134807759-pd7vb1sgjc47tn7568hi01rr9ukfb3d1.apps.googleusercontent.com',
    iosBundleId: 'com.example.appfloat',
  );
}