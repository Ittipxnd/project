import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mark4/one/button.dart';
import 'package:mark4/one/singup.dart';
import 'package:mark4/one/text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart'; // Import หน้า Home

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign in with email and password
  void signInWithEmail() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } on FirebaseAuthException catch (e) {
      print('Failed with error code : ${e.code}');
      print(e.message);

      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        _showMyDialog('Login ไม่ถูกต้อง');
      }
    }
  }

  // Show dialog function
  void _showMyDialog(String txtMsg) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Login Status'),
          content: Text(txtMsg),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 164, 214, 255),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color:
                  Color.fromARGB(255, 206, 232, 255), // สีพื้นหลัง bg-cyan-100
              borderRadius: BorderRadius.circular(48), // รูปร่างขอบ rounded-3xl
            ),
            constraints: const BoxConstraints(
              maxWidth: 400, // กว้าง
              minWidth: 300, // กว้างขั้นต่ำ
              maxHeight: 500, // สูงสุด
              minHeight: 350, // สูงขั้นต่ำ
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 154, 163, 171),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  MyTextField(
                    controller: emailController,
                    obscureText: false,
                    labelText: 'Username',
                    hintText: '',
                  ),
                  const SizedBox(height: 30),
                  MyTextField(
                    controller: passwordController,
                    obscureText: true,
                    labelText: 'Password',
                    hintText: '',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 27, 56, 80),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  MyButton(onTap: signInWithEmail, hintText: 'Sign In'),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 154, 163, 171),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        child: Text(
                          'Create an account',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 5, 142, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
