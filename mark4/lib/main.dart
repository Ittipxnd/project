import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mark4/firebase_options.dart';
import 'package:mark4/one/home.dart';
import 'package:mark4/one/singup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mark4/one/login.dart';

bool show = true; // ประกาศตัวแปรเพื่อกำหนดการแสดงหน้า Login หรือ Home

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    // ถ้าต้องการใช้ options สำหรับแพลตฟอร์มที่แตกต่างกัน เช่น iOS หรือ Android ให้ใส่ options ตามต้องการ
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
        primaryColor: Color.fromARGB(255, 27, 56, 80),
      ),
      home: show
          ? const Login()
          : SignUpScreen(), // กำหนดให้แสดงหน้า Login หรือ HOME ตามค่า show
    );
  }
}
