import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constants.dart';


Widget unSoldProductTile({
  required String productId,
  required String batchNumber,
  required String batchQty,
  required String holderType,
  required String watt,
  required String size,
  required String importDate,
  required Widget icon,
  void Function()? onPress,

}){
  return   Container(
    width: queryWidth*0.9,
    decoration: BoxDecoration(
      color: black3,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            icon,
          ],
        ),
        ///name
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
                width: queryWidth*0.4,
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

        ///name
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              const Text(
                textAlign: TextAlign.center,
                "Batch Number",
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
                  batchNumber,
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
                "Batch QTY",
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
                  batchQty,
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
                "Holder Type",
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
                  holderType,
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
                "Watt",
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
                  watt,
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
                "Size",
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
                  size,
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
                "Import Date",
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
                  importDate,
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
        const Gap(15),
      ],
    ),
  );
}