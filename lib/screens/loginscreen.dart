import 'package:flutter/material.dart';
import 'package:todoapp/customwidgets.dart';
import 'package:todoapp/screens/addtodoscreen.dart';
import 'package:todoapp/screens/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: Padding(
        padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
        child: Column(
          children: [
            const Arrowback(),
            const SizedBox(height: 50),
            const Text(
              'Welcome Back!',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset('images/teacher.png', height: 226),
            const SizedBox(height: 20),
            const Kinputtext(hint: 'Enter your email address'),
            const SizedBox(height: 30),
            const Kinputtext(hint: 'Confirm Password'),
            const SizedBox(height: 50),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff55847A),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
            const SizedBox(height: 50),
            kbutton(
              text: 'Sign In',
              ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddTodoScreen(),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Koption(
              firstText: "Don't have an account ? ",
              lasstText: 'Sign up',
              ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
