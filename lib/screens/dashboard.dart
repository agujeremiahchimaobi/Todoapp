import 'package:flutter/material.dart';

import '../tasklist.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 270,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xff55847A),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 90),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Welcome Jeremiah',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins'),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250, left: 100),
                child: Image.asset('images/rider.png', height: 246),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Todo Tasks',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 30,
            ),
            margin: const EdgeInsets.all(20.0),
            height: 240,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 1,
                  offset: const Offset(1, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: const [
                    SizedBox(width: 15),
                    Text(
                      'Daily Tasks.',
                      style: TextStyle(fontFamily: 'poppins'),
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 12,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const TaskList(text: 'Go for early morning workout'),
                const SizedBox(height: 10.0),
                const TaskList(text: 'Start Coding by 9am'),
                const SizedBox(height: 10.0),
                const TaskList(text: 'eat breakfast by 7am'),
                const SizedBox(height: 10.0),
                const TaskList(text: 'sleep by 9pm'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
