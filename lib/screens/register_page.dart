// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_colors.dart';
import 'package:quickalert/quickalert.dart';
import 'package:project_1/firebase_ref/references.dart';
import 'package:project_1/screens/login_page.dart';

import '../tools/my_button_log.dart';
import '../tools/my_textfield_log.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<dynamic> students = [];
  List<dynamic> teachers = [];

  void showAlert() {
    QuickAlert.show(
        context: context,
        text: "Your account has been created successfully. You can login now",
        type: QuickAlertType.success);
  }

  // // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  final fullNameController = TextEditingController();

  final roleController = TextEditingController();

  // sign user in method
  void signUserUp() async {
    int flag = 0;
    //show leading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try creating the user
    try {
      //check if the password and confirm password matches
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        // add user details

        // addUserDetails(
        //     fullNameController.text.trim(), emailController.text.trim());
        SaveUser(fullNameController.text.trim(), emailController.text.trim(),
            roleController.text.trim().toString().toLowerCase());
      } else {
        //show error message
        showAlertMessage("Passwords don't match");
      }
    } on FirebaseAuthException catch (e) {
      //pop the leading circle
      Navigator.pop(context);
      flag = 1;
      Navigator.pop(context);
      showAlertMessage(e.code);
    }
    if (flag == 0) {
      Navigator.pop(context);
      Get.to(() => LoginPage(
            onTap: () {},
          ));
      showAlert();
    }
  }

  // Future addUserDetails(String fullName, String email) async {
  //   await FirebaseFirestore.instance.collection('users').add({
  //     "Full Name": fullName,
  //     "Email": email,
  //   });
  // }

  SaveUser(String fullName, String email, String role) {
    userRF.doc(email).set({"email": email, "name": fullName, "role": role});
  }

  // error message to the user
  void showAlertMessage(String message) {
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
                    Icons.adb_rounded,
                    size: 100,
                  ),

                  const SizedBox(height: 50),

                  // welcome back, you've been missed!
                  const Text(
                    "let's create an account for you",
                    style: TextStyle(fontSize: 16, color: onSurfaceTextColor),
                  ),

                  const SizedBox(height: 25),

                  // username textfield
                  MyTextField(
                    controller: fullNameController,
                    hintText: 'Full Name',
                    obscureText: false,
                    prefixedIcon: const Icon(Icons.person_outline_rounded),
                  ),

                  const SizedBox(height: 10),

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
                    obscureText: true,
                    prefixedIcon: const Icon(Icons.fingerprint_outlined),
                  ),

                  const SizedBox(height: 10),

                  //conform password

                  MyTextField(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                    prefixedIcon: const Icon(Icons.fingerprint_outlined),
                  ),

                  const SizedBox(height: 10),

                  MyTextField(
                    controller: roleController,
                    hintText: 'Role - teacher/student',
                    obscureText: false,
                    prefixedIcon: const Icon(Icons.person),
                  ),

                  const SizedBox(height: 25),

                  // sign in button
                  MyButton(
                    text: "Sign Up",
                    onTap: signUserUp,
                    textColor: Colors.white,
                    buttonColor: Colors.purple.shade700,
                    // onTap: (() {}),
                  ),

                  const SizedBox(height: 35),

                  // not a member? register now
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          // onTap: widget.onTap,
                          // onTap: widget.onTap,
                          onTap: (() {
                            Get.to(LoginPage(onTap: () {}));
                          }),
                          child: const Text(
                            'Login now',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
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
