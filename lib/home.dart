import 'package:course_app/container/ads.dart';
import 'package:course_app/container/appbar.dart';
import 'package:course_app/container/card_without_school_student.dart';
import 'package:course_app/container/card_school_student.dart';
import 'package:course_app/container/class.dart';

import 'package:course_app/container/search_bar.dart';
import 'package:course_app/container/sorting_card.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({
    super.key,
  });

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List<int> data = [0, 0, 1, 0, 1, 0, 1, 1, 0, 1];

  static List<String> JEE = [
    "PYSHICS",
    "MATHS",
    "CHEMISTRY",
    "JEE",
    '20% OFF',
  ];
  static List<String> NEET = [
    "PYSHICS",
    "BIOLOGY",
    "CHEMISTRY",
    "NEET",
    '20% OFF',
  ];
  static List<String> Filter = ["JEE", "NEET", "SCHOOL_STUDENT"];
  static List<String> Sorting = ['Relevance', 'Distance', 'Price', 'Rating'];
  static List<String> selectedItems = [];
  static List<String> selectedSorting = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          appBar(),
          searchbar(),
          SizedBox(
            height: 18,
          ),
          search_card(
            course: Filter,
            sorting: Sorting,
            selectedItems: selectedItems,
            selectedSorting: selectedSorting,
          ),
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: list_course.length,
              itemBuilder: (context, index) {
                var id = list_course[index].course;
                if (id == 'JEE') {
                  return card(
                    name: JEE,
                    distance: list_course[index].distance,
                    rating: list_course[index].rating,
                  );
                } else if (index % 3 == 0 && index >= 3) {
                  return ads();
                } else {
                  return card2(
                    name: NEET,
                    distance: list_course[index].distance,
                    rating: list_course[index].rating,
                  );
                }
              },
            ),
          ),
        ]),
      ),
    );
  }
}
