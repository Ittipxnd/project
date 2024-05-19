import 'package:flutter/material.dart';

class FlutterFlowTheme {
  static ThemeData of(BuildContext context) {
    return Theme.of(context);
  }

  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFF4CAF50), // สีหลัก
    secondaryHeaderColor: const Color(0xFFCDDC39), // สีรอง
    backgroundColor: const Color(0xFFFFFFFF), // สีพื้นหลังหลัก
    scaffoldBackgroundColor: const Color(0xFFF5F5F5), // สีพื้นหลัง Scaffold
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontFamily: 'Readex Pro',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Readex Pro',
        fontSize: 16,
        color: Colors.black,
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 24,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: const Color(0xFF4CAF50), // สีปุ่ม
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  // เพิ่มธีมอื่นๆ เช่น darkTheme ถ้าต้องการ
}
