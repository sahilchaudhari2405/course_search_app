import 'package:course_app/style.dart';
import 'package:flutter/material.dart';

class card2 extends StatelessWidget {
  const card2(
      {super.key,
      required this.name,
      required this.distance,
      required this.rating});

  final List<String> name;
  final double rating;
  final double distance;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        child: Stack(
          // alignment: AlignmentDirectional.bottomStart,
          children: [
            Container(
              height: 260,
              width: double.maxFinite,
              decoration: ShapeDecoration(
                color: Color(0xFFF6EFFE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\u2022  2 of your school students study here',
                      style: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 12,
                        fontFamily: 'Avenir Next LT Pro',
                        fontWeight: FontWeight.w400,
                        height: 1.42,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 25,
                left: 15,
                right: 15,
              ),
              height: 230,
              decoration: shapeDecoration1,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          width: 157,
                          height: double.infinity,
                          child: Image.asset('images/group.png',
                              fit: BoxFit.fill))),
                  SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Metro Coaching Center ',
                          style: textStyle1,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 6),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "$rating . $distance kms away",
                                style: textStyle2,
                              ),
                            ],
                          ),
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: name.map((value) {
                            return Padding(
                              padding: EdgeInsets.only(top: 10, right: 9),
                              child: Container(
                                decoration: (value == '20% OFF')
                                    ? shapeDecoration3
                                    : shapeDecoration,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '$value',
                                    style: (value == '20% OFF')
                                        ? textStyle3
                                        : textStyle,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
