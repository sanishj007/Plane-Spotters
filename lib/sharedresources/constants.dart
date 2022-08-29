import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color.fromRGBO(30, 30, 30, .7),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white,width: 2.0)
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white,width: 5.0)
  ),
);