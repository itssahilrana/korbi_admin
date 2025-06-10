import 'package:flutter/material.dart';
import '../constants.dart';

Widget roundButton({
  required String text,
  void Function()? onPressed,
  required Color backgroundColor,
  required Color disabledBackgroundColor,
}){
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
    child: ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: backgroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: white,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    ),
  );
}