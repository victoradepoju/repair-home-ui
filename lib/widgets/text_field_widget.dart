import 'package:flutter/material.dart';


Widget textFieldWidget(String labelTexts, bool obscure) { 
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(118, 158, 158, 158),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(5, 8),
          ),
        ],
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          labelText: labelTexts,
          labelStyle: const TextStyle(
            fontSize: 16,
            color: Color.fromARGB(92, 0, 0, 0),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
