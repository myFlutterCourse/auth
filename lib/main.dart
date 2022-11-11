import 'package:auth/firebase_options.dart';
import 'package:auth/login_form.dart';
import 'package:auth/register_form.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  initFirebase();
  runApp(MyApp());
}

void initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(title: appTitle, home: LoginForm());
  }
}
