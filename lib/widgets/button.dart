import 'package:flutter/material.dart';

import '../constants.dart';

Widget button ({
  required String buttonText,
  void Function()? onTap,
}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: queryWidth*0.95,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: red3,
      ),
      child: Center(
        child: Text(
          buttonText,
          maxLines: 1,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    ),
  );
}