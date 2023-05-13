// import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:project_1/screens/forgot_password.dart';
import 'package:project_1/screens/options_screen.dart';
import 'package:project_1/screens/register_page.dart';
import 'package:project_1/screens/teachers_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../tools/my_button_log.dart';
import '../tools/my_textfield_log.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _isobscured = true;
  // // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final roleController = TextEditingController();

  void route() {
    User? user = FirebaseAuth.instance.currentUser;
    var kk = FirebaseFirestore.instance
        .collection('users')
        .doc(user!.email)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('role') == "teacher") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => TeachersScreen(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OptionsScreen(),
            ),
          );
        }
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  void signUserOut() {
    FirebaseAuth.instance.signOut();
    Get.to(() => LoginPage(onTap: () {}));
  }

  // // sign user in method
  void signUserIn() async {
    int flag = 0;

    //show leading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.deepPurple,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
          ),
        );
      },
    );

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the leading circle
      flag = 1;
      Navigator.pop(context);
      if (e.code == "user-not-found") {
        //show error to the user
        showErrorMessage(e.code);
      } else if (e.code == "wrong-password") {
        //show error to the user
        showErrorMessage(e.code);
      }
    }
    route();
    // if (flag == 0 &&
    //     roleController.text.toString().toUpperCase() == "TEACHER") {
    //   launchUrl(url1);
    // } else if (flag == 0 &&
    //     roleController.text.toString().toUpperCase() == "STUDENT") {
    //   Get.to(() => OptionsScreen());
    // }
  }

  // error message to the user
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient()),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),

                  // logo
                  const Icon(
                    Icons.book,
                    color: Colors.purple,

                    size: 100,
                    // color: onSurfaceTextColor,
                  ),

                  const SizedBox(height: 50),

                  // welcome back, you've been missed!
                  const Text(
                    'Welcome back you\'ve been missed!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'User Login',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 20),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 40),

                  // username textfield
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                    prefixedIcon: const Icon(Icons.email_outlined),
                  ),

                  const SizedBox(height: 10),

                  // password textfield
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: _isobscured,
                    prefixedIcon: const Icon(Icons.fingerprint_outlined),
                    suffixIcon: IconButton(
                      icon: _isobscured
                          ? const Icon(Icons.remove_red_eye_outlined)
                          : const Icon(Icons.visibility_off),
                      onPressed: (() {
                        setState(() {
                          _isobscured = !_isobscured;
                        });
                      }),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // forgot password?
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                              text: "Forgot Password?",
                              recognizer: TapGestureRecognizer()
                                ..onTap = (() => Get.to(
                                      const ForgotPassword(),
                                    )),
                              style: const TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // sign in button
                  MyButton(
                    text: "Sign In",
                    onTap: signUserIn,
                    textColor: Colors.white,
                    buttonColor: Colors.purple.shade700,
                    // onTap: (() {}),
                  ),

                  const SizedBox(height: 40),

                  // or continue with

                  // const SizedBox(height: 50),

                  // // google + apple sign in buttons
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     // google button
                  //     GestureDetector(
                  //       onTap: (() {}),
                  //       child: const SquareTile(imagePath: 'images/google.png'),
                  //     ),

                  //     const SizedBox(width: 25),

                  //     // apple button
                  //     const SquareTile(imagePath: 'images/apple.png')
                  //   ],
                  // ),

                  const SizedBox(height: 35),

                  // not a member? register now
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Not a member?',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          // onTap: widget.onTap,
                          // onTap: widget.onTap,
                          onTap: () {
                            Get.to(RegisterPage(onTap: () {}));
                          },
                          child: const Text(
                            'Register now',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
