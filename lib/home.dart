import 'package:course_app/container/card.dart';
import 'package:course_app/container/search_card.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List<int> data = [0, 0, 0, 0, 1, 0, 0, 1, 0, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 13), // Adjust padding as needed
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), // Add border
                  borderRadius: BorderRadius.circular(8), // Add border radius
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search for UPSC Coaching',
                          border: InputBorder
                              .none, // Hide the default TextField border
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    VerticalDivider(
                      width: 1, // Adjust the width of the divider
                      color: Colors.black,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mic,
                        size: 30,
                      ),
                      onPressed: () {
                        // Add your search functionality here
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            search_card(data: data),
            SizedBox(
              height: 20,
            ),
            card(data: data),
          ],
        ),
      ),
    );
  }
}

mixin snapshot {}
