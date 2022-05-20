import 'package:flutter/material.dart';

Widget logoStamps(social) {
  return Container(
    height: 50.0,
    width: 100.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: social,
      ),
    ),
  );
}