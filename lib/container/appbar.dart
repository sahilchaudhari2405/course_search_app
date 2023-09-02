import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 21, top: 24, left: 24),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            radius: 22,
            backgroundColor: Color(0xFF7D23E0),
          ),
          SizedBox(
            width: 26,
          ),
          Text(
            'For JEE-Mains',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Avenir Next LT Pro',
              fontWeight: FontWeight.w600,
              height: 1.06,
              letterSpacing: 0.16,
            ),
          )
        ],
      ),
    );
    ;
  }
}
