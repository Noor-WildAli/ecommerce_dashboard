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
    apiKey: 'AIzaSyBGnx5s6qBY2gUxgD3BoD5KDTeoHs-Rdko',
    appId: '1:769185554598:web:2cec90ea2b97244a731467',
    messagingSenderId: '769185554598',
    projectId: 'ecommerce-app-8bf79',
    authDomain: 'ecommerce-app-8bf79.firebaseapp.com',
    storageBucket: 'ecommerce-app-8bf79.appspot.com',
    measurementId: 'G-9L1YFVEMYB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDLUYgSkGaUKrxFNk9SSKjKkm3jUyhpXpk',
    appId: '1:769185554598:android:918004046d934c58731467',
    messagingSenderId: '769185554598',
    projectId: 'ecommerce-app-8bf79',
    storageBucket: 'ecommerce-app-8bf79.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAD6CENGSif56nWVEQiP4FCGr1cN77PH1Y',
    appId: '1:769185554598:ios:11892a7886b1c007731467',
    messagingSenderId: '769185554598',
    projectId: 'ecommerce-app-8bf79',
    storageBucket: 'ecommerce-app-8bf79.appspot.com',
    androidClientId: '769185554598-fo82n20n7ke2r3h0hgs1lo218b6spacp.apps.googleusercontent.com',
    iosClientId: '769185554598-h6735jn3lc9gavr4sebkak7vki8k723i.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceDashboard',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAD6CENGSif56nWVEQiP4FCGr1cN77PH1Y',
    appId: '1:769185554598:ios:11892a7886b1c007731467',
    messagingSenderId: '769185554598',
    projectId: 'ecommerce-app-8bf79',
    storageBucket: 'ecommerce-app-8bf79.appspot.com',
    androidClientId: '769185554598-fo82n20n7ke2r3h0hgs1lo218b6spacp.apps.googleusercontent.com',
    iosClientId: '769185554598-h6735jn3lc9gavr4sebkak7vki8k723i.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceDashboard',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBGnx5s6qBY2gUxgD3BoD5KDTeoHs-Rdko',
    appId: '1:769185554598:web:ac24fbf855123a84731467',
    messagingSenderId: '769185554598',
    projectId: 'ecommerce-app-8bf79',
    authDomain: 'ecommerce-app-8bf79.firebaseapp.com',
    storageBucket: 'ecommerce-app-8bf79.appspot.com',
    measurementId: 'G-CQZQWWBV1B',
  );
}