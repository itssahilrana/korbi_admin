import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constants.dart';
import 'edge_button.dart';

Widget totalCustomerTile({
  required String name,
  required String email,
  required String phone,
  required String city,
  required String state,
  void Function()? onPress,
  void Function()? onBlock,
}){
  return Container(
    width: queryWidth*0.9,
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
                width: queryWidth*0.3,
                child: Text(
                  textAlign: TextAlign.end,
                  phone,
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
                "City",
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
                  city,
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
                "State",
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
                  state,
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

        edgeButton(
          text: "  Block Coustomer  ",
          backgroundColor: red2,
         onPressed: onBlock,
        ),

        ///space
        const Gap(5),
      ],
    ),
  );
}