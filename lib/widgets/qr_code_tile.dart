import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../constants.dart';

Widget qrCodeTile({
  required String productId,
  required String text,
}){
  return Container(
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///space
          const Gap(10),
      
          ///heading
           Text(
            text,
            style: const TextStyle(
              color: black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
      
          ///space
          const Gap(20),
      
          ///qr code
          QrImageView(
            data: productId,
            size: 150,
            version: QrVersions.auto,
          ),
        ],
      ),
    ),
  );
}