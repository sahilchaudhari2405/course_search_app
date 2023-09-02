import 'package:course_app/container/filter.dart';
import 'package:course_app/container/sorting.dart';
import 'package:course_app/home.dart';
import 'package:flutter/material.dart';

class search_card extends StatefulWidget {
  search_card(
      {super.key,
      required this.course,
      required this.sorting,
      required this.selectedItems,
      required this.selectedSorting});
  List<String> course, sorting, selectedItems, selectedSorting;
  @override
  State<search_card> createState() => _search_cardState();
}

class _search_cardState extends State<search_card> {
  void _showMultiSelect() async {
    // a list of selectable items

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: widget.course);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        widget.selectedItems = results;
      });
    }
  }

  void _showSortSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return multiSorting(items: widget.sorting);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        widget.selectedSorting = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 24),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: _showMultiSelect,
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF7D23E0)),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Filters',
                        style: TextStyle(
                          color: Color(0xFF7D23E0),
                          fontSize: 17,
                          fontFamily: 'Avenir Next LT Pro',
                          fontWeight: FontWeight.w400,
                          height: 1.21,
                          letterSpacing: 0.14,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.tune,
                        color: Color(0xFF7D23E0),
                        size: 17,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: _showSortSelect,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFF7D23E0)),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'Sort',
                        style: TextStyle(
                          color: Color(0xFF7D23E0),
                          fontSize: 17,
                          fontFamily: 'Avenir Next LT Pro',
                          fontWeight: FontWeight.w400,
                          height: 1.21,
                          letterSpacing: 0.14,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF7D23E0),
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.selectedItems.map((value) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFF7D23E0)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$value',
                      style: TextStyle(
                        color: Color(0xFF7D23E0),
                        fontSize: 17,
                        fontFamily: 'Avenir Next LT Pro',
                        fontWeight: FontWeight.w400,
                        height: 1.21,
                        letterSpacing: 0.14,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.selectedSorting.map((value) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFF7D23E0)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$value',
                      style: TextStyle(
                        color: Color(0xFF7D23E0),
                        fontSize: 17,
                        fontFamily: 'Avenir Next LT Pro',
                        fontWeight: FontWeight.w400,
                        height: 1.21,
                        letterSpacing: 0.14,
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
    ;
  }
}
