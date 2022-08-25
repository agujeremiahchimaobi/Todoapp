import 'package:flutter/material.dart';
import 'package:todoapp/screens/dashboard.dart';

import '../customwidgets.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
          child: Column(children: [
            const Arrowback(),
            const SizedBox(height: 40),
            const Text(
              'Welcome Onboard!',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Image.asset('images/boyandgirl.png', height: 172),
            ),
            const SizedBox(height: 30),
            const Text(
              'Add What your want to do later on..',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff55847A),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
            const SizedBox(height: 30),
            const Kinputtext(),
            const SizedBox(height: 30),
            const Kinputtext(),
            const SizedBox(height: 30),
            const Kinputtext(),
            const SizedBox(height: 40),
            kbutton(
              text: 'Add to List',
              ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashBoard(),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ]),
        ),
      ),
    );
  }
}
