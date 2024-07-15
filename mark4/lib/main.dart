import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mark4/account/profile.dart';
import 'package:mark4/firebase_options.dart';
import 'package:mark4/widget/navbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mark4/one/login.dart';

bool show = true; // ประกาศตัวแปรเพื่อกำหนดการแสดงหน้า Login หรือ Home

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('LOGIN') ?? true; // อ่านค่าจาก SharedPreferences

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supermarket Recommendations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 27, 56, 80),
      ),
      home: show ? const Login() :  NavScreen(),
    );
  }
}
