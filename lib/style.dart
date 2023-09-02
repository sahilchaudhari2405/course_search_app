import 'dart:ui';

import 'package:flutter/material.dart';

var shapeDecoration = ShapeDecoration(
  shape: RoundedRectangleBorder(
    side: BorderSide(width: 0.40, color: Color(0x777D23E0)),
    borderRadius: BorderRadius.circular(4),
  ),
);
var shapeDecoration3 = ShapeDecoration(
  color: Color(0xE57D23E0),
  shape: RoundedRectangleBorder(
    side: BorderSide(width: 0.40, color: Color(0x777D23E0)),
    borderRadius: BorderRadius.circular(4),
  ),
);
var textStyle = TextStyle(
  color: Color.fromRGBO(125, 35, 224, 1),
  fontSize: 10,
  fontFamily: 'Avenir Next LT Pro',
  fontWeight: FontWeight.w600,
  height: 1,
  letterSpacing: 1.20,
);
var boxShadow = BoxShadow(
  color: Color(0x3F000000),
  blurRadius: 1,
  offset: Offset(0, 0),
  spreadRadius: 0,
);
var shapeDecoration1 = ShapeDecoration(
  color: Color(0xFFF6EFFE),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  shadows: [boxShadow],
);
var shapeDecoration2 = ShapeDecoration(
  gradient: LinearGradient(
    begin: Alignment(-0.00, -1.00),
    end: Alignment(0, 1),
    colors: [
      Colors.white.withOpacity(0),
      Color(0xE57D23E0),
    ],
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);
var textStyle1 = const TextStyle(
  color: Color(0xFF272727),
  fontSize: 16,
  fontFamily: 'Avenir Next LT Pro',
  fontWeight: FontWeight.w700,
  height: 1.06,
  letterSpacing: 0.16,
);
var textStyle2 = TextStyle(
  color: Color(0xFF414141),
  fontSize: 12,
  fontFamily: 'Avenir Next LT Pro',
  fontWeight: FontWeight.w400,
  height: 1.42,
  letterSpacing: 0.12,
);
var textStyle3 = TextStyle(
  color: Colors.white,
  fontSize: 10,
  fontFamily: 'Avenir Next LT Pro',
  fontWeight: FontWeight.w600,
  height: 1,
  letterSpacing: 1.20,
);
