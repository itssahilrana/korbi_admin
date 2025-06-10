import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../constants.dart';
import 'edge_button.dart';


Widget soldProductTile({
  required String dealer,
   required String coustomer,
  required String importDate,
  required String guaranteeStart,
  required String guaranteeEnd,
  required String productId,
  void Function()? onPressCoustomer,
  void Function()? onPressProduct,

}){
  return   Container(
    width: queryWidth*0.9,
    decoration: BoxDecoration(
      color: black3,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          ///space
          const Gap(20),
      
          ///name
          Row(
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
      
          ///space
          const Gap(8),
      
          Row(
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
                width: queryWidth*0.4,
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
      
          ///space
          const Gap(8),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Dealer Name",
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
                  dealer,
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
      
          ///space
          const Gap(8),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                textAlign: TextAlign.center,
                "Coustomer Name",
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
                  coustomer,
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
      
          ///space
          const Gap(8),
      
          Row(
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
                width: queryWidth*0.3,
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
      
          ///space
          const Gap(8),
      
          Row(
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
                width: queryWidth*0.3,
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
      
          const Gap(5),
      
          SizedBox(
            width: queryWidth,
            child: edgeButton(
              text: "   Product Details   ",
              backgroundColor: greyDark,
              disabledBackgroundColor: greyDark,
              onPressed: onPressProduct,
            ),
          ),
      
          SizedBox(
            width: queryWidth,
            child: edgeButton(
              text: " Coustomer Details ",
              backgroundColor: red2,
              disabledBackgroundColor: red2,
              onPressed: onPressCoustomer,
            ),
          ),
          ///space
          const Gap(10),
        ],
      ),
    ),
  );
}