import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key, required this.text});

  final String text;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  late bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              ischecked = !ischecked;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: ischecked ? const Color(0xff55847A) : Colors.white,
              border: Border.all(color: Colors.black, width: 1.5),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          widget.text,
          style: TextStyle(fontSize: 15, fontFamily: 'Poppins'),
        )
      ],
    );
  }
}
