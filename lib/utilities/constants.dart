import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: const Color(0x88001835),
  fontFamily: 'Source Sans Pro',
  fontStyle: FontStyle.italic,
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'Source Sans Pro',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFFFFFFFF),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);

/// Primary blue color (Hex: 001835)
final euphoBlue = const Color(0xFF001835);

/// Primary yellow color (Hex: F9DB6A)
final euphoYellow = const Color(0xFFF9DB6A);