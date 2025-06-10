import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants.dart';

Widget blackTextField({
  required String hintText,
  TextEditingController? controller,
  void Function(String)? onChanged,
  Widget? prefixIcon,
  Widget? suffixIcon,
  Widget? suffix,
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
}) {
  return TextField(
    controller: controller,
    onChanged: onChanged,
    keyboardType: keyboardType,
    inputFormatters: inputFormatters,
    cursorColor: white,
    style: const TextStyle(
      color: black,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      hintText: hintText,
      suffixIcon: suffixIcon,
      suffix: suffix,
      contentPadding: const EdgeInsets.only(
        left: 10,
      ),
      filled: true,
      fillColor: black,
      constraints: const BoxConstraints(),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: black,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: white,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: black,
        ),
      ),
      hintStyle: const TextStyle(
        color: white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
