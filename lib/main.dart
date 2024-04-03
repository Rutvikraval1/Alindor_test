import 'package:alindor_test/Screens/IndRecord_screen/IndRecord_screen.dart';
import 'package:alindor_test/services/firebase_options.dart';
import 'package:alindor_test/services/pref_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/login_screen/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Preferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alindor_test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Preferences.getBoolValuesSF(Preferences.USER_ACTIVE)==null?const login_screen():const IndRecord_screen(),
    );
  }
}
