import 'package:flutter/material.dart';

import '../style.dart';

class card extends StatelessWidget {
  const card(
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
      child: Container(
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
                    child: Image.asset('images/group.png', fit: BoxFit.fill))),
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
                          "${rating} . ${distance} kms away",
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
                              style:
                                  (value == '20% OFF') ? textStyle3 : textStyle,
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
    );
  }
}
