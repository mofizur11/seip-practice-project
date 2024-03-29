import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/auth/login_page.dart';
import 'package:firebase_demo/blog/blog_screen.dart';
import 'package:firebase_demo/home_page.dart';
import 'package:firebase_demo/register.dart';
import 'package:firebase_demo/splash_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application. 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}
