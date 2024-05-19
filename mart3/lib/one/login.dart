import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart3/one/icon_button.dart';
import 'package:mart3/option/button.dart';
import 'package:mart3/option/mytext.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Text editting controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  signInWithEmail() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      _showMyDialog("You can enjoy activities here.");
    } on FirebaseAuthException catch (e) {
      print('Failed with error code : ${e.code}');
      print(e.message);

      if (e.code == 'invalid-email') {
        _showMyDialog('No user found for that email.');
      } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
        _showMyDialog('Wrong password provided for that user.');
      }
    }
  }

  // ignore: non_constant_identifier_names
  void _showMyDialog(String txtMsg) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            // backgroundColor: Color.fromARGB(255, 224, 249, 255),
            title: const Text('Login Successfully.'),
            content: Text(txtMsg),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 211, 211),
      body: Column(mainAxisSize: MainAxisSize.max, children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: 
            Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Please sign-in with your email and password",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        MyTextField(
                          controller: emailController,
                          hintText: 'Enter your email',
                          obscureText: false,
                          labelText: 'Email',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        MyTextField(
                          controller: passwordController,
                          hintText: 'Enter your password',
                          obscureText: true, //ปกปิดเป็นความลับ
                          labelText: 'Password',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot password?',
                                  style: GoogleFonts.lato(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        MyButton(onTap: signInWithEmail, hintText: 'Sign In'),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Expanded(
                                child: Divider(
                                  thickness: 1.0,
                                  color: Color.fromARGB(255, 246, 46, 46),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: Text(
                                  'or continue with',
                                  style: GoogleFonts.lato(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displaySmall,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                      color: const Color.fromARGB(
                                          255, 1, 15, 209)),
                                ),
                              ),
                              const Expanded(
                                child: Divider(
                                  thickness: 1.0,
                                  color: Color.fromARGB(255, 246, 46, 46),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyIconButton(
                              imagePath: 'assets/images/google.png',
                              width: 50,
                              height: 50,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyIconButton(
                              imagePath: 'assets/images/apple.png',
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Not a member?',
                              style: GoogleFonts.lato(
                                  textStyle:
                                      Theme.of(context).textTheme.displayMedium,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                  color:
                                      const Color.fromARGB(255, 243, 116, 255)),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            TextButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => SignUpScreen(),
                                //   ),
                                // );
                              },
                              child: Text(
                                'Register now',
                                style: GoogleFonts.lato(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                    color: const Color.fromARGB(
                                        255, 243, 80, 255)),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
