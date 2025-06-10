import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/constants.dart';
import 'package:korbi_admin/modals/total_customers_modal.dart';
import 'package:korbi_admin/screens/coustomer_detail_screen/coustomer_detail_screen.dart';
import 'package:korbi_admin/screens/product_id_list_screen/product_detail_screen.dart';
import 'package:korbi_admin/widgets/sold_product_tile.dart';
import '../../responsive_class.dart';
import '../../widgets/edge_button.dart';
import '../../widgets/round_button.dart';
import '../product_id_creation/product_id_creation_screen.dart';
import '../search_screen/search_screen.dart';

List<TotalCustomersModal> soldProductList = [
  TotalCustomersModal(
    dealer: "Ramesh Yadav",
    mobileNumber: "9845551258",
    email: "Rameshydv@gmail.com",
    state: "Harayana",
    city: "Sonipat",
    name: "Ram Kumar",
    coustomer: "Hari Om",
    productId: "01234567",
    importDate: "30/10/24",
    guaranteeEnd: "05/11/24",
    guaranteeStart: "05/11/25",
    holderType:  "GH 465 G8458",
    batchNumber:  "59",
    batchQty: "54",
    size:  "4",
    watt:  "152",
    carModel:  "GHT 55",
  ),
  TotalCustomersModal(
    dealer: "Ramesh Yadav",
    coustomer: "Hari Om",
    productId: "01234567",
    importDate: "30/10/24",
    guaranteeEnd: "05/11/24",
    guaranteeStart: "05/11/25",
    holderType:  "GH 465 G8458",
    batchNumber:  "59",
    batchQty: "54",
    size:  "4",
    watt:  "152",
    carModel:  "GHT 55",
  ),
  TotalCustomersModal(
    dealer: "Ramesh Yadav",
    coustomer: "Hari Om",
    productId: "01234567",
    importDate: "30/10/24",
    guaranteeEnd: "05/11/24",
    guaranteeStart: "05/11/25",
    holderType:  "GH 465 G8458",
    batchNumber:  "59",
    batchQty: "54",
    size:  "4",
    watt:  "152",
    carModel:  "GHT 55",
  ),
  TotalCustomersModal(
    dealer: "Ramesh Yadav",
    coustomer: "Hari Om",
    productId: "01234567",
    importDate: "30/10/24",
    guaranteeEnd: "05/11/24",
    guaranteeStart: "05/11/25",
  ),

];

class SoldScreen extends StatefulWidget {
  const SoldScreen({super.key});

  @override
  State<SoldScreen> createState() => _SoldScreenState();
}

class _SoldScreenState extends State<SoldScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Column(
            children: [
              ///text field row
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ///search button
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (index) => const SearchScreen()));
                    },
                    highlightColor: black3,
                    hoverColor: black,
                    constraints: const BoxConstraints(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greyDark,
                    ),
                    icon: const Icon(
                      Icons.search,
                      size: 20,
                      color: white,
                    ),
                  ),

                  const Gap(5),

                  ///create Product
                  IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: black,
                              title: const Center(
                                child: Text(
                                  "Create Product Id",
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    edgeButton(
                                        text: "Cancel",
                                        backgroundColor: black5,
                                        disabledBackgroundColor: black5,
                                        onPressed: () {
                                          //todo
                                        }),
                                    roundButton(
                                        text: "Create",
                                        backgroundColor: red2,
                                        disabledBackgroundColor: red2,
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (index) => const ProductIdCreationScreen()));
                                        }),
                                  ],
                                ),
                              ],
                            );
                          });
                    },
                    highlightColor: black4,
                    hoverColor: black,
                    constraints: const BoxConstraints(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greyDark,
                    ),
                    icon: const Icon(
                      Icons.add,
                      size: 20,
                      color: white,
                    ),
                  ),

                  ///space
                  const Gap(10),
                ],
              ),

              ///space
              const Gap(10),

              Center(
                child: DataTable(
                  horizontalMargin: 5,
                  headingRowColor: WidgetStateColor.resolveWith(
                    (states) {
                      return black5;
                    },
                  ),
                  dataRowColor: WidgetStateColor.resolveWith(
                    (states) {
                      return white;
                    },
                  ),
                  dataTextStyle: const TextStyle(
                    color: black,
                  ),
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Product ID.",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Import Date",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Dealer Name",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Coustomer Name",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Guarantee Start",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Guarantee End",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Text(
                          textAlign: TextAlign.center,
                          "View Details",
                          style: TextStyle(
                            color: white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),

                  ],
                  rows: List.generate(soldProductList.length, (index) {
                    return DataRow(cells: <DataCell>[
                      DataCell(
                        SizedBox(
                          width: 80,
                          child: Text(
                            textAlign: TextAlign.center,
                            "${soldProductList[index].productId}",
                          ),
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 80,
                          child: Text(
                            textAlign: TextAlign.center,
                            "${soldProductList[index].importDate}",
                          ),
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 150,
                          child: Text(
                            textAlign: TextAlign.center,
                            "${soldProductList[index].dealer}",
                          ),
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 150,
                          child: Text(
                            textAlign: TextAlign.center,
                            "${soldProductList[index].coustomer}",
                          ),
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 80,
                          child: Text(
                            textAlign: TextAlign.center,
                            "${soldProductList[index].guaranteeStart}",
                          ),
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 80,
                          child: Text(
                            textAlign: TextAlign.center,
                            "${soldProductList[index].guaranteeEnd}",
                          ),
                        ),
                      ),
                      DataCell(
                        Row(
                          children: [
                            edgeButton(
                              text: "Product Details",
                              backgroundColor: greyDark,
                              disabledBackgroundColor: greyDark,
                              onPressed: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context)=> ProductDetailScreen(
                                    productId:  "${soldProductList[index].productId}",
                                    holderType:  "${soldProductList[index].holderType}",
                                    batchNumber:  "${soldProductList[index].batchNumber}",
                                    batchQty:  "${soldProductList[index].batchQty}",
                                    size:  "${soldProductList[index].size}",
                                    watt:  "${soldProductList[index].watt}",
                                    carModel:  "${soldProductList[index].carModel}",
                                    importDate:  "${soldProductList[index].importDate}",
                                ),
                                ));
                              }
                            ),

                            edgeButton(
                              text: "Coustomer Details",
                              backgroundColor: red2,
                              disabledBackgroundColor: red2,
                                onPressed: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (context)=> CoustomerDetailScreen(
                                  name:  "${soldProductList[index].name}",
                                  email:  "${soldProductList[index].email}",
                                  city:  "${soldProductList[index].city}",
                                  mobileNumber:  "${soldProductList[index].mobileNumber}",
                                  state:  "${soldProductList[index].state}",
                                )));
                                }
                            ),
                          ],
                        ),
                      ),

                    ]);
                  }),
                ),
              ),
            ],
          )
    ///mobile screen
        : SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
          child: Column(
              children: [
                ///text field row
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ///search button
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (index) => const SearchScreen()));
                      },
                      highlightColor: black3,
                      hoverColor: black,
                      constraints: const BoxConstraints(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greyDark,
                      ),
                      icon: const Icon(
                        Icons.search,
                        size: 20,
                        color: white,
                      ),
                    ),

                    const Gap(5),

                    ///create Product
                    IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: black,
                                title: const Center(
                                  child: Text(
                                    "Create Product Id",
                                    style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                actions: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      edgeButton(
                                          text: "Cancel",
                                          backgroundColor: black5,
                                          disabledBackgroundColor: black5,
                                          onPressed: () {
                                            //todo
                                          }),
                                      roundButton(
                                          text: "Create",
                                          backgroundColor: red2,
                                          disabledBackgroundColor: red2,
                                          onPressed: () {
                                            Navigator.push(
                                                context, MaterialPageRoute(builder: (index) => const ProductIdCreationScreen()));
                                          }),
                                    ],
                                  ),
                                ],
                              );
                            });
                      },
                      highlightColor: black4,
                      hoverColor: black,
                      constraints: const BoxConstraints(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: greyDark,
                      ),
                      icon: const Icon(
                        Icons.add,
                        size: 20,
                        color: white,
                      ),
                    ),

                    ///space
                    const Gap(10),
                  ],
                ),

                ///space
                const Gap(10),

                Center(
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: List.generate(
                        soldProductList.length, (index)=> soldProductTile(
                      productId: "${soldProductList[index].productId}",
                      dealer: "${soldProductList[index].dealer}",
                      coustomer: "${soldProductList[index].coustomer}",
                      importDate: "${soldProductList[index].importDate}",
                      guaranteeStart: "${soldProductList[index].guaranteeStart}",
                      guaranteeEnd: "${soldProductList[index].guaranteeEnd}",
                      onPressCoustomer: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=> CoustomerDetailScreen(
                          name:  "${soldProductList[index].name}",
                          email:  "${soldProductList[index].email}",
                          city:  "${soldProductList[index].city}",
                          mobileNumber:  "${soldProductList[index].mobileNumber}",
                          state:  "${soldProductList[index].state}",
                        ),
                        ));
                      },
                      onPressProduct: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=> ProductDetailScreen(
                          productId:  "${soldProductList[index].productId}",
                          holderType:  "${soldProductList[index].holderType}",
                          batchNumber:  "${soldProductList[index].batchNumber}",
                          batchQty:  "${soldProductList[index].batchQty}",
                          size:  "${soldProductList[index].size}",
                          watt:  "${soldProductList[index].watt}",
                          carModel:  "${soldProductList[index].carModel}",
                          importDate:  "${soldProductList[index].importDate}",
                        ),
                        ));
                      },

                    )),
                  ),
                ),
              ],
            ),
        );
  }
}
