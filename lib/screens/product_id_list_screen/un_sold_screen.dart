import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/modals/total_customers_modal.dart';
import 'package:korbi_admin/widgets/product_id.dart';
import '../../responsive_class.dart';

List<TotalCustomersModal> productIdList = [
  TotalCustomersModal(
    productId: "645643",
    batchNumber: "09",
    batchQty: "09",
    holderType: "SYU 400A 400PJ30-7",
    watt: "150",
    size: "0",
    carModel: "BMW M",
    importDate: "30/10/24",
  ),
  TotalCustomersModal(
    productId: "645643",
    batchNumber: "09",
    batchQty: "09",
    holderType: "SYU 400A 400PJ30-7",
    watt: "150",
    size: "0",
    carModel: "BMW M",
    importDate: "30/10/24",
  ),
  TotalCustomersModal(
    productId: "645643",
    batchNumber: "09",
    batchQty: "09",
    holderType: "SYU 400A 400PJ30-7",
    watt: "150",
    size: "0",
    carModel: "BMW M",
    importDate: "30/10/24",
  ),
  TotalCustomersModal(
    productId: "645643",
    batchNumber: "09",
    batchQty: "09",
    holderType: "SYU 400A 400PJ30-7",
    watt: "150",
    size: "0",
    carModel: "BMW M",
    importDate: "30/10/24",
  ),
  TotalCustomersModal(
    productId: "645643",
    batchNumber: "09",
    batchQty: "09",
    holderType: "SYU 400A 400PJ30-7",
    watt: "150",
    size: "0",
    carModel: "BMW M",
    importDate: "30/10/24",
  ),
  TotalCustomersModal(
    productId: "645643",
    batchNumber: "09",
    batchQty: "09",
    holderType: "SYU 400A 400PJ30-7",
    watt: "150",
    size: "0",
    carModel: "BMW M",
    importDate: "30/10/24",
  ),
];

enum DropDownValue {
  grid,
  list,
}

final currentDropDownValue = ValueNotifier(DropDownValue.grid);

class UnSoldScreen extends StatefulWidget {
  const UnSoldScreen({super.key});

  @override
  State<UnSoldScreen> createState() => _UnSoldScreenState();
}

class _UnSoldScreenState extends State<UnSoldScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Column(
            children: [
              ///space
              const Gap(40),


             Center(
               child: Wrap(
                 spacing: 20,
                 runSpacing: 20,
                 children:List.generate(
                   productIdList.length, (index)=> productId(
                     productId: "${productIdList[index].productId}",
                   onPressProductDetail: (){
                       //todo navigate to productDetailScreen
                   },
                 ),
                 ),
               ),
             ),
            ],
          )

        ///mobile screen
        : SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                ///space
                const Gap(40),


                Center(
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 15,
                    children: List.generate(
                      productIdList.length, (index)=> productId(
                      productId: "${productIdList[index].productId}",
                      onPressProductDetail: (){
                        //todo navigate to productDetailScreen
                      },
                    ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
