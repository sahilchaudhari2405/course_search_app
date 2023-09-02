import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: 13), // Adjust padding as needed
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.75, color: Color(0xFFBDBDBD)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for UPSC Coaching',
                  border: InputBorder.none, // Hide the default TextField border
                ),
              ),
            ),
            Icon(Icons.search,
                size: 30, color: Color.fromARGB(255, 139, 133, 145)),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
              ),
              child: Image(image: AssetImage('images/Line.png')),
            ),
            IconButton(
              icon: Icon(
                Icons.mic,
                size: 30,
                color: Color(0xFF7D23E0),
              ),
              onPressed: () {
                // Add your search functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}
