import 'package:flutter/material.dart';

class ads extends StatelessWidget {
  const ads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 79,
              height: 82,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 156,
              child: Text(
                'Having a tough time navigating through your career roadmap?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Avenir Next LT Pro',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: 88,
              height: 25,
              decoration: ShapeDecoration(
                color: Color(0xFF7D23E0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Center(
                child: Text(
                  'Ask Ostello',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Avenir Next LT Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
