import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../constants.dart';
import 'edge_button.dart';

Widget productId({
  required String productId,
  void Function()? onPressProductDetail,
  void Function()? onPressConsumerDetail,
}){
  return Container(
    width: 180,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///space
          const Gap(5),

          /// product id
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Product Id",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,

                ),
              ),

              const Gap(5),


              Text(
                productId,
                style: const TextStyle(
                  color: black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),

          ///space
          const Gap(5),

          ///qr code
          QrImageView(
            data: productId,
            version: QrVersions.auto,
            size: 130.0,
          ),

          ///space
          const Gap(5),

          ///buttons
          edgeButton(
            text: "  Product Details  ",
            backgroundColor: greyDark,
            disabledBackgroundColor: greyDark,
            onPressed: onPressProductDetail
          ),


        ],
      ),
    ),
  );
}