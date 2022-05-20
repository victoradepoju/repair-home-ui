import 'package:flutter/material.dart';


Widget horizontalScroll (image) {
  return Container(
          // margin: const EdgeInsets.all(15),
          width: 250,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: image,
              fit: BoxFit.fill
              ),
          ),
  );
}