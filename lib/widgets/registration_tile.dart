import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constants.dart';

Widget registrationTile({
  required String name,
  required String email,
  required String mobileNumber,
  required String productId,
  required String guaranteeEnd,
  required String guaranteeStart,
  void Function()? onPress,
}){
  return   Container(
    width: queryWidth*0.85,
    decoration: BoxDecoration(
      color: black3,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        ///space
        const Gap(20),

        ///name
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Name",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),

              ///space
              const Spacer(),

              SizedBox(
                width: queryWidth*0.4,
                child: Text(
                  textAlign: TextAlign.end,
                  name,
                  style: const TextStyle(
                    color: black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),

        ///space
        const Gap(8),

        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "E-Mail",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),

              ///space
              const Spacer(),

              SizedBox(
                width: queryWidth*0.4,
                child: Text(
                  textAlign: TextAlign.end,
                  email,
                  style: const TextStyle(
                    color: black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),

        ///space
        const Gap(8),

        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Mobile No.",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),

              ///space
              const Spacer(),

              SizedBox(
                width: queryWidth*0.23,
                child: Text(
                  textAlign: TextAlign.end,
                  mobileNumber,
                  style: const TextStyle(
                    color: black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),

        ///space
        const Gap(8),

        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Product ID",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),

              ///space
              const Spacer(),

              SizedBox(
                width: queryWidth*0.23,
                child: Text(
                  textAlign: TextAlign.end,
                  productId,
                  style: const TextStyle(
                    color: black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),

        ///space
        const Gap(8),

        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Guarantee Start",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),

              ///space
              const Spacer(),

              SizedBox(
                width: queryWidth*0.23,
                child: Text(
                  textAlign: TextAlign.end,
                  guaranteeStart,
                  style: const TextStyle(
                    color: black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),

        ///space
        const Gap(8),

        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Guarantee End",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),

              ///space
              const Spacer(),

              SizedBox(
                width: queryWidth*0.23,
                child: Text(
                  textAlign: TextAlign.end,
                  guaranteeEnd,
                  style: const TextStyle(
                    color: black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),

        ///space
        const Gap(20),
      ],
    ),
  );
}