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
    apiKey: 'AIzaSyCMsxY8Rzg2P4h9oHzTB6ksgfwzBSb59Co',
    appId: '1:484328854889:web:84301a40c4020bff5259f8',
    messagingSenderId: '484328854889',
    projectId: 'fireship-quizapp-25920',
    authDomain: 'fireship-quizapp-25920.firebaseapp.com',
    storageBucket: 'fireship-quizapp-25920.appspot.com',
    measurementId: 'G-WJHVVGL41H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtnjaYNkHSITN380Br2nT-sfC_AVEgSTg',
    appId: '1:484328854889:android:1f781ce6b0b411125259f8',
    messagingSenderId: '484328854889',
    projectId: 'fireship-quizapp-25920',
    storageBucket: 'fireship-quizapp-25920.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC3RTk74ke6Or26Q2WXJk75oIDVqgOeq10',
    appId: '1:484328854889:ios:1acb111af81b6f1a5259f8',
    messagingSenderId: '484328854889',
    projectId: 'fireship-quizapp-25920',
    storageBucket: 'fireship-quizapp-25920.appspot.com',
    iosClientId: '484328854889-nb9uhgoi6c72l6dmvlgsot6rvise8a3g.apps.googleusercontent.com',
    iosBundleId: 'demo.test.quizApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC3RTk74ke6Or26Q2WXJk75oIDVqgOeq10',
    appId: '1:484328854889:ios:1acb111af81b6f1a5259f8',
    messagingSenderId: '484328854889',
    projectId: 'fireship-quizapp-25920',
    storageBucket: 'fireship-quizapp-25920.appspot.com',
    iosClientId: '484328854889-nb9uhgoi6c72l6dmvlgsot6rvise8a3g.apps.googleusercontent.com',
    iosBundleId: 'demo.test.quizApp',
  );
}
