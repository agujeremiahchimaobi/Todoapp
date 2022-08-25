import 'package:flutter/material.dart';
import 'package:todoapp/screens/dashboard.dart';
import 'package:todoapp/screens/loginscreen.dart';

import '../customwidgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 70, left: 20.0, right: 20.0),
          child: Column(
            children: [
              const Arrowback(),
              const SizedBox(height: 50),
              const Text(
                'Welcome Onboard!',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                "let's help you meet up your task",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff55847A),
                ),
              ),
              const SizedBox(height: 60),
              const Kinputtext(hint: 'Enter your full name'),
              const SizedBox(height: 30.0),
              const Kinputtext(hint: 'Enter your email address'),
              const SizedBox(height: 30.0),
              const Kinputtext(hint: 'Create a password'),
              const SizedBox(height: 30.0),
              const Kinputtext(hint: 'Confirm your password'),
              const SizedBox(height: 100.0),
              kbutton(
                text: 'Sign Up',
                ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DashBoard(),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Koption(
                firstText: 'Already have an account ? ',
                lasstText: 'Sign In',
                ontap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
              ),
              const SizedBox(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
