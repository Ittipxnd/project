import 'package:flutter/material.dart';
import 'package:mart3/one/introduction_screen.dart';
import 'package:mart3/option/flutter_flow_theme.dart';
import 'package:mart3/two/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

///ไฟล์เบสที่เอาไว้เชื่อมต่อ
// import 'firebase_options.dart';

import 'one/login.dart';

bool show = true; //ประกาศเป็นตัวแปรโชว์
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final bool? loggedIn = prefs.getBool('LOGGED_IN');
  runApp(MyApp(loggedIn: loggedIn));
}

class MyApp extends StatelessWidget {
  final bool? loggedIn;

  MyApp({this.loggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Comparison',
       theme: FlutterFlowTheme.lightTheme, // ใช้ธีมที่เราสร้าง
      home: HomePageWidget(),
      //   primarySwatch: Colors.blue,//สีหลักของแอปเช่น สีของ AppBar, ปุ่ม, และ widgets อื่นๆ ที่ใช้สีหลัก
      // ),
      // home: loggedIn == true
      //     ? IntroScreen()
      //     : HomeScreen(), //คำสั่งif ในรูปย่อ ifถ้าจริงไปหน้า IntroScreen() else ถ้าไม่ใช่ไปหน้า HomeScreen()
    );
  }
}

