import 'package:flutter/material.dart';

class kbutton extends StatelessWidget {
  const kbutton({this.ontap, required this.text});

  final dynamic ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 44,
        width: 220,
        color: const Color(0xff55847A),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Kinputtext extends StatelessWidget {
  const Kinputtext({Key? key, this.hint});

  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30.0),
      height: 47,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        cursorHeight: 20,
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none),
      ),
    );
  }
}

class Koption extends StatelessWidget {
  const Koption({Key? key, this.ontap, this.firstText, this.lasstText})
      : super(key: key);

  final dynamic ontap;
  final String? firstText;
  final String? lasstText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: firstText,
              style: const TextStyle(
                  color: Colors.black, fontFamily: 'Poppins', fontSize: 15),
            ),
            TextSpan(
              text: lasstText,
              style: const TextStyle(
                  color: Color(0xff55847A),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}

class Arrowback extends StatelessWidget {
  const Arrowback({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Image.asset(
          'images/backarrow.png',
          height: 30,
        ),
      ),
    );
  }
}
