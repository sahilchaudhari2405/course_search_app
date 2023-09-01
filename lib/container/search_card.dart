import 'package:flutter/material.dart';

class search_card extends StatelessWidget {
  search_card({required this.data});
  final List<int> data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 37,
        // Set a fixed height for the container as per your requirement
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemExtent: 150,
          itemBuilder: (context, index) {
            var id = data[index];
            if (id > 0) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFF7D23E0)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFF7D23E0)),
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        width: 20,
                      ),
                      Icon(Icons.tune)
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
