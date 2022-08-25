import 'package:flutter/material.dart';
import 'package:todoapp/screens/signupscreen.dart';

import '../customwidgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: Container(
        margin: const EdgeInsets.only(top: 202, left: 25, right: 25.0),
        child: Column(
          children: [
            Image.asset('images/guy.png'),
            const SizedBox(height: 50),
            const Text(
              'Get Things done with TODo',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"),
            ),
            const SizedBox(height: 30),
            const Text(
              'what does your day look like? \nhow are you keeping up with your schedules\nwhy not allow us help you achieve more \nLets help you do the arrangements',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            const SizedBox(height: 70),
            kbutton(
              text: 'Get Started',
              ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
