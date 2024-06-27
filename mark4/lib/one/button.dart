import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onTap,
    required this.hintText,
  });

  final Function()? onTap;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150.0, // กำหนดความกว้างของปุ่ม
        margin:
            const EdgeInsets.symmetric(horizontal: 10.0), // ลดระยะห่างด้านซ้ายและขวา
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 178, 244, 189),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10.0), // ลด padding ด้านบนและด้านล่าง
            child: Text(
              hintText,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.titleLarge,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
