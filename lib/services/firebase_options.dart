
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      // case TargetPlatform.macOS:
      //   return macos;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  /// Production mode

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyAvL-cfz9yb8eUsW7SvzvWISPh6w3FeNWs",
      authDomain: "myneber-89358.firebaseapp.com",
      projectId: "myneber-89358",
      storageBucket: "myneber-89358.appspot.com",
      messagingSenderId: "435464157689",
      appId: "1:435464157689:web:5f6941175d8255ca796528",
      measurementId: "G-K3MP1ZD4TR"
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDgwiU4ovNE7_ATVS6-QFKcTBXtHmz8p0',
    appId: '1:435464157689:android:1c4be26bc8cc0901796528',
    messagingSenderId: '435464157689',
    projectId: 'myneber-89358',
    storageBucket: 'myneber-89358.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7ScZAp0gF744s_zKJtxVKCkPfwXAQyYc',
    appId: '1:435464157689:ios:362b803dde9fb28f796528',
    messagingSenderId: '435464157689',
    projectId: 'myneber-89358',
    storageBucket: 'myneber-89358.appspot.com',
    iosBundleId: 'com.ksmyneber.myneber',
  );











  /// Developement mode
  static FirebaseOptions get developement_Platform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return dev_android;
      // case TargetPlatform.iOS:
      //   return dev_ios;
    // case TargetPlatform.macOS:
    //   return macos;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions dev_android = FirebaseOptions(
    apiKey: 'AIzaSyCX4ut6XUyJewFRSBmpFRErrkKGJGRPaiY',
    appId: '1:756208192158:android:cce4c779a937fbbea7498f',
    messagingSenderId: '756208192158',
    projectId: 'com.ksmyneber.dev',
    storageBucket: 'my-neber-development.appspot.com',
  );















}
