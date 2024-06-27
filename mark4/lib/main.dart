import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

import 'package:mark4/firebase_options.dart';
import 'one/login.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:firebase_core/firebase_core.dart';
//import 'screen/sign_up_screen.dart';
bool show = true; //ประกาศเป็นตัวแปรโชว์

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    ///เตรียมไฟล์เบสให้เรียบร้อยเพื่อรอคำสั่งถัดไป

    options: DefaultFirebaseOptions.currentPlatform,

    ///ถ้าใช้idไหนให้ใส่อันนั้น เช่นiosใช้idของiosที่ให้มา
  );

  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('LOGIN') ??
      true; //ถ้าไม่ใช่หน้าสุดท้ายให้รันต่อ ถ้าใช่น่าสุดท้ายจะเด้งไปหน้าเว็บเลย
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 171, 210, 242),
      ),
      // home: IntroScreen(),
      home: show
          ? HOME()
          : Login(), //คำสั่งif ในรูปย่อ ifถ้าจริงไปหน้า HOME() else ถ้าไม่ใช่ไปหน้า LOGIN()
    );
  }
}
