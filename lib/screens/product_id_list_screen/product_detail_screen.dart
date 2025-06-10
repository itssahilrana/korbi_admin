import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/constants.dart';
import 'package:korbi_admin/screens/dealers_screen/dealers_list.dart';
import 'package:korbi_admin/screens/guarantee_registration_form_screen/guarantee_registration_form_screen.dart';
import 'package:korbi_admin/widgets/edge_button.dart';
import 'package:korbi_admin/widgets/qr_code_tile.dart';
import 'package:korbi_admin/widgets/round_button.dart';
import 'package:korbi_admin/widgets/textField.dart';
import '../../responsive_class.dart';


enum MenuItem {
  item1,
  item2,
  item3,
}


class ProductDetailScreen extends StatefulWidget {
  final String productId;
  final String batchNumber;
  final String batchQty;
  final String size;
  final String watt;
  final String carModel;
  final String holderType;
  final String importDate;

  const ProductDetailScreen({
    super.key,
    required this.productId,
    required this.holderType,
    required this.batchNumber,
    required this.batchQty,
    required this.size,
    required this.watt,
    required this.carModel,
    required this.importDate,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  TextEditingController productIdController = TextEditingController();
  TextEditingController holderTypeController = TextEditingController();
  TextEditingController batchNumberController = TextEditingController();
  TextEditingController batchQtyController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController wattController = TextEditingController();
  TextEditingController carModelController = TextEditingController();
  TextEditingController importDateController = TextEditingController();
  bool isEdit = false;

  @override
  void initState() {
    productIdController.text = widget.productId;
    holderTypeController.text = widget.holderType;
    batchNumberController.text = widget.batchNumber;
    batchQtyController.text = widget.batchQty;
    sizeController.text = widget.size;
    wattController.text = widget.watt;
    carModelController.text = widget.carModel;
    importDateController.text = widget.importDate;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
    ?Scaffold(
      body: Center(
        child: Column(
          children: [
            ///space
            const Gap(20),

            ///grey box
            Container(
              width: queryWidth*0.9,
              height: queryHeight*0.9,
              decoration: BoxDecoration(
                color: black2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ///heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: black,
                        ),
                      ),
                      ///heading
                      const Text(
                        "Product Details",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  ///space
                  const Gap(10),

                  ///container
                  Center(
                    child: Container(
                      width: queryWidth*0.8,
                      height: queryHeight*0.75,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ///space
                                    const Gap(10),


                                    ///row containing two columns
                                    const Text(
                                      "Product ID",
                                      style: TextStyle(
                                        color: black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    ///textfield
                                    SizedBox(
                                      width: 300,
                                      child: textField(
                                        hintText: "KI946L849",
                                        isReadOnly: true,
                                        controller: productIdController,
                                      ),
                                    ),

                                    ///space
                                    const Gap(20),

                                    ///product details
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: const Text(
                                              "Batch Number",
                                            style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ":",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child:  Text(
                                            textAlign: TextAlign.end,
                                            widget.batchNumber,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: const Text(
                                            "Batch QTY",
                                            style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ":",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: Text(
                                            textAlign: TextAlign.end,
                                            widget.batchQty,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: const Text(
                                            "Import Date",
                                            style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ":",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child:  Text(
                                            textAlign: TextAlign.end,
                                            widget.importDate,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: const Text(
                                            "Holder Type",
                                            style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ":",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child:  Text(
                                            textAlign: TextAlign.end,
                                            widget.holderType,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: const Text(
                                            "Watt",
                                            style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ":",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child:  Text(
                                            textAlign: TextAlign.end,
                                            widget.watt,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: const Text(
                                            "Size",
                                            style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ":",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child:  Text(
                                            textAlign: TextAlign.end,
                                            widget.size,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Gap(10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child: const Text(
                                            "Car Model",
                                            style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          ":",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          width: queryWidth*0.2,
                                          child:  Text(
                                            textAlign: TextAlign.end,
                                            widget.carModel,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    ///space
                                    const Gap(30),

                                    ///edit button
                                    roundButton(
                                      text: "Edit",
                                      backgroundColor: red2,
                                      disabledBackgroundColor: red2,
                                      onPressed: (){
                                        isEdit = true;
                                      }
                                    ),
                                  ],
                                ),


                                ///second column
                                qrCodeTile(
                                  productId: widget.productId,
                                  text: "Product QR Code",
                                ),

                                const Gap(30),

                              ],
                            ),

                            ///space
                            const Gap(20),

                            ///issue button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                edgeButton(
                                  text: "Issue to Dealer",
                                  backgroundColor: greyDark,
                                  disabledBackgroundColor: black,
                                  onPressed: (){
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (index)=> const DealersListScreen()));
                                  },
                                ),

                                edgeButton(
                                  text: "Guarantee Registration From",
                                  backgroundColor: greyDark,
                                  disabledBackgroundColor: black,
                                  onPressed: (){
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (index)=> const GuaranteeRegistrationFormScreen()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      

                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    )
    ///mobile screen
    :Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 20,
            color: black,
          ),
        ),
        title: const Text(
          "Product Details",
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
        actions: [
          PopupMenuButton(
            color: red2,
            iconColor: red2,
            itemBuilder: (context)=>[
              const PopupMenuItem(
                value:MenuItem.item1,
                child: Text(
                  "Issue to Dealer",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: white,
                  ),
                ),
              ),
              const PopupMenuItem(
                value:MenuItem.item2,
                child: Text(
                  "Get Label for Box",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: white,
                  ),
                ),
              ),
              const PopupMenuItem(
                value:MenuItem.item3,
                child: Text(
                  "Get Guarantee Label",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: white,
                  ),
                ),
              ),
            ],
            onSelected: (value){
              if(value == MenuItem.item1){
                ///clicked item 1
                Navigator.push(
                    context, MaterialPageRoute(builder: (index)=> const DealersListScreen()));
              } else if(value == MenuItem.item2){
                //todo clicked item 2
              } else if(value == MenuItem.item3){
                //todo clicked item 3
              }},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              ///space
              const Gap(10),


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
                        widget.productId,
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
                        widget.batchNumber,
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
                        widget.batchQty,
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
                        widget.holderType,
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
                        widget.watt,
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
                        widget.size,
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
                        widget.importDate,
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

              ///qr code
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ///product qr code
                  qrCodeTile(
                      productId: widget.productId,
                      text: "Product QR Code",
                  ),

                  ///guarantee qr code
                  qrCodeTile(
                    productId: widget.productId,
                    text: "Guarantee QR Code",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
