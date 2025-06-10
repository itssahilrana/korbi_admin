import 'package:flutter/material.dart';
import '../constants.dart';

Widget edgeButton({
  required String text,
  void Function()? onPressed,
  required Color backgroundColor,
   Color ? disabledBackgroundColor,
}){
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
    child: ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
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