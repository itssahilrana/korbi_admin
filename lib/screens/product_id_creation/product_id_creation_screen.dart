import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants.dart';
import '../../responsive_class.dart';
import '../../widgets/edge_button.dart';
import '../../widgets/new_textfield.dart';

class ProductIdCreationScreen extends StatefulWidget {
  const ProductIdCreationScreen({super.key});

  @override
  State<ProductIdCreationScreen> createState() =>
      _ProductIdCreationScreenState();
}

class _ProductIdCreationScreenState extends State<ProductIdCreationScreen> {
  TextEditingController batchNumberController = TextEditingController();
  TextEditingController batchQtyController = TextEditingController();
  TextEditingController importController = TextEditingController();
  TextEditingController holderController = TextEditingController();
  TextEditingController wattController = TextEditingController();
  TextEditingController sizeController = TextEditingController();
  TextEditingController carModelController = TextEditingController();
  bool isButtonActive = false;
  void isButton() {
    ///show loading
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: false,
        child: AlertDialog(
          backgroundColor: red4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
          content: const Row(
            children: [
              //circular loading
              CircularProgressIndicator(
                color: black,
              ),

              //space
              SizedBox(
                width: 20,
              ),

              //loading text
              Text(
                'Creating...',
                style: TextStyle(
                  color: black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    Future.delayed(const Duration(seconds: 1), () {
      if(!mounted) return;
      Navigator.of(context, rootNavigator: true).pop();

      ///navigate to next screen
      if (batchNumberController.text.isNotEmpty) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (index) => const ProductIdCreationScreen()));
        // action
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: red3,
            content: Text(
              'Product ID Created Successfully',
              style: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          //snackBar
          const SnackBar(
            backgroundColor: red3,
            content: Text(
              'Details Missing',
            ),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Scaffold(
            body: Column(
              children: [
                ///plot
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: Alignment.center,
                    //width: queryWidth*0.95,
                    height: queryHeight * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: black2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ///space
                          const Gap(10),

                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 20,
                                  color: black,
                                ),
                              ),
                              const Text(
                                "Product Id Creation",
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          ///space
                          const Gap(40),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: queryWidth * 0.3,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      ///space
                                      const Gap(5),

                                      ///name
                                      const Text(
                                        "Batch Number",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                          hintText: "Batch Number",
                                          controller: batchNumberController,
                                          onChanged: (value) {
                                            isButtonActive =
                                                batchNumberController
                                                        .text.isNotEmpty
                                                    ? true
                                                    : false;
                                          }),

                                      ///space
                                      const Gap(8),

                                      const Text(
                                        "Batch QTY",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                          hintText: "Batch QTY",
                                          controller: batchQtyController,
                                          onChanged: (value) {
                                            isButtonActive = batchQtyController
                                                    .text.isNotEmpty
                                                ? true
                                                : false;
                                          }),

                                      ///space
                                      const Gap(8),

                                      const Text(
                                        "Import Date",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                          hintText: "30/10/24",
                                          controller: importController,
                                          onChanged: (value) {
                                            isButtonActive =
                                                importController.text.isNotEmpty
                                                    ? true
                                                    : false;
                                          }),

                                      ///space
                                      const Gap(8),

                                      const Text(
                                        "Holder Type",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                          hintText: "SYU 400A 400PJ30-7",
                                          controller: holderController,
                                          onChanged: (value) {
                                            isButtonActive =
                                                holderController.text.isNotEmpty
                                                    ? true
                                                    : false;
                                          }),

                                      ///space
                                      const Gap(10),
                                    ],
                                  ),
                                ),
                              ),

                              ///space
                              const Gap(20),

                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: queryWidth * 0.3,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          ///space
                                          const Gap(5),

                                          ///name
                                          const Text(
                                            "Watt",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          newTextField(
                                              hintText: "150",
                                              controller: wattController,
                                              onChanged: (value) {
                                                isButtonActive = wattController
                                                        .text.isNotEmpty
                                                    ? true
                                                    : false;
                                              }),

                                          ///space
                                          const Gap(8),

                                          const Text(
                                            "Size",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          newTextField(
                                              hintText: "12",
                                              controller: sizeController,
                                              onChanged: (value) {
                                                isButtonActive = sizeController
                                                        .text.isNotEmpty
                                                    ? true
                                                    : false;
                                              }),

                                          ///space
                                          const Gap(8),

                                          const Text(
                                            "Car Model",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          newTextField(
                                              hintText: "BMW M",
                                              controller: carModelController,
                                              onChanged: (value) {
                                                isButtonActive =
                                                    carModelController
                                                            .text.isNotEmpty
                                                        ? true
                                                        : false;
                                              }),

                                          ///space
                                          const Gap(8),
                                        ],
                                      ),
                                    ),
                                  ),

                                  ///space
                                  const Gap(100),

                                  ///review button
                                  edgeButton(
                                    text: "Save",
                                    backgroundColor: greyDark,
                                    disabledBackgroundColor: black,
                                    onPressed: () {
                                      isButtonActive == true ? isButton : null;
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                ///space
                const Gap(20),
              ],
            ),
          )
        ///mobile screen
        : Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: black,
                ),
              ),
              title: const Text(
                "Product Id Creation",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
            ),
            body: Column(
              children: [
                ///plot
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Container(
                    alignment: Alignment.center,
                    //width: queryWidth*0.95,
                    height: queryHeight * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: black2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ///space
                            const Gap(5),
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: queryWidth * 0.8,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        ///space
                                        const Gap(5),
                        
                                        ///name
                                        const Text(
                                          "Batch Number",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "Batch Number",
                                            controller: batchNumberController,
                                            onChanged: (value) {
                                             setState(() {
                                               isButtonActive = batchNumberController.text.isNotEmpty ? true : false;
                                             });
                                            }),
                        
                                        ///space
                                        const Gap(8),
                        
                                        const Text(
                                          "Batch QTY",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "Batch QTY",
                                            controller: batchQtyController,
                                            onChanged: (value) {
                                             setState(() {
                                               isButtonActive = batchQtyController.text.isNotEmpty ? true : false;
                                             });
                                            }),
                        
                                        ///space
                                        const Gap(8),
                        
                                        const Text(
                                          "Import Date",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "30/10/24",
                                            controller: importController,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = importController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
                                        ///space
                                        const Gap(8),
                        
                                        const Text(
                                          "Holder Type",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "SYU 400A 400PJ30-7",
                                            controller: holderController,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = holderController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
                                        ///space
                                        const Gap(8),
                        
                                        ///name
                                        const Text(
                                          "Watt",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "150",
                                            controller: wattController,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = wattController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
                                        ///space
                                        const Gap(8),
                        
                                        const Text(
                                          "Size",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "12",
                                            controller: sizeController,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = sizeController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
                                        ///space
                                        const Gap(8),
                        
                                        const Text(
                                          "Car Model",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "BMW M",
                                            controller: carModelController,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = carModelController.text.isNotEmpty ? true : false;
                                              });
                                            }),

                                        ///space
                                        const Gap(15),

                                        ///review button
                                        Center(
                                          child: edgeButton(
                                            text: "Create Product ID",
                                            backgroundColor: greyDark,
                                            disabledBackgroundColor: black,
                                            onPressed: isButtonActive == true ? isButton : null,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                ///space
                const Gap(20),
              ],
            ),
          );
  }
}
