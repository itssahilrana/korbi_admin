import 'package:flutter/material.dart';

import '../constants.dart';

Widget dashBoardButton({
  required String text,
  String? numbers,
  void Function()? onTap,
}){
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 300,
        height: 180,
        decoration: BoxDecoration(
          color: red2,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              maxLines: 1,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: white,
              ),
            ),

          ],
        ),
      ),
    ),
  );
}