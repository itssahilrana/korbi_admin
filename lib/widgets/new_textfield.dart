import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants.dart';

Widget newTextField({
  required String hintText,
  TextEditingController? controller,
  void Function(String)? onChanged,
  Widget? prefixIcon,
  Widget? suffixIcon,
  Widget? suffix,
  TextInputType? keyboardType,
  int? maxLength,
  int? maxLines,
  List<TextInputFormatter>? inputFormatters,
  bool isReadOnly = false,
}) {
  return SizedBox(
    width: queryWidth*0.95,
    height: 50,
    child: TextField(
      maxLines: maxLines,
      readOnly: isReadOnly,
      maxLength: maxLength,
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      cursorColor: black,
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
          left: 15, right: 15, bottom: 10, top: 10,
        ),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: black,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: black,
          ),
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
