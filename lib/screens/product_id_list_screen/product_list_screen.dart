import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/screens/dealers_screen/dealers_list.dart';
import 'package:number_pagination/number_pagination.dart';
import '../../constants.dart';
import '../../modals/total_customers_modal.dart';
import '../../responsive_class.dart';
import '../../widgets/edge_button.dart';
import '../../widgets/round_button.dart';
import '../../widgets/unsold_product_tile.dart';
import '../product_id_creation/product_id_creation_screen.dart';
import '../search_screen/search_screen.dart';

enum MenuItem {
  item1,
  item2,
  item3,
  item4,
}

List<String> list = <String>[
  'QR Code',
  'List',
];

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

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  bool isVisible = true;
  int selectedPageNumber = 1;
  String productValue = "UnSold";
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Scaffold(
            backgroundColor: black3,
            appBar: AppBar(
              backgroundColor: black3,
              title:  const Text(
                "Product List",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              actions: [
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
                                            context,
                                            MaterialPageRoute(
                                                builder: (index) =>
                                                    const ProductIdCreationScreen()));
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
                    size: 25,
                    color: white,
                  ),
                ),

                ///space
                const Gap(5),

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
                    size: 25,
                    color: white,
                  ),
                ),

                ///space
                const Gap(10),
              ],
            ),
            body: Column(
              children: [
                ///space
                const Gap(15),

                Center(
                  child: DataTable(
                    horizontalMargin: 50,
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
                            "Product ID",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
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
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Batch Number",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Batch QTY",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Size",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Watt",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Car Model",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Holder Type",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            "",
                            style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                    rows: List.generate(productIdList.length, (index) {
                      return DataRow(cells: <DataCell>[
                        DataCell(
                          SizedBox(
                            width: 80,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].productId}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 80,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].importDate}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 100,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].batchNumber}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 80,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].batchQty}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 80,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].size}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 80,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].watt}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 150,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].carModel}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 150,
                            child: Text(
                              textAlign: TextAlign.center,
                              "${productIdList[index].holderType}",
                            ),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: 20,
                            child: PopupMenuButton(
                              color: red2,
                              iconColor: red2,
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: MenuItem.item1,
                                  child: Text(
                                    "Issue to Dealer",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: white,
                                    ),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: MenuItem.item2,
                                  child: Text(
                                    "Get Label for Box",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: white,
                                    ),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: MenuItem.item3,
                                  child: Text(
                                    "Get Guarantee Label",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: white,
                                    ),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: MenuItem.item3,
                                  child: Text(
                                    "Show Product QR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                              onSelected: (value) {
                                if (value == MenuItem.item1) {
                                  ///clicked item 1
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const DealersListScreen()));
                                } else if (value == MenuItem.item2) {
                                  //todo clicked item 2
                                } else if (value == MenuItem.item3) {
                                  //todo clicked item 3
                                } else if (value == MenuItem.item4) {
                                  //todo clicked item 2
                                }
                              },
                            ),
                          ),
                        ),
                      ]);
                    }),
                  ),
                ),
              ],
            ),
          )
        : Scaffold(
            backgroundColor: white,
            appBar: AppBar(
              backgroundColor: black3,
              title: const Text(
                "Product List",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              actions: [
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
                                            context,
                                            MaterialPageRoute(
                                                builder: (index) =>
                                                    const ProductIdCreationScreen()));
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
                    size: 25,
                    color: white,
                  ),
                ),

                ///space
                const Gap(5),

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
                    size: 25,
                    color: white,
                  ),
                ),

                ///space
                const Gap(10),
              ],
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SafeArea(
                child: Column(
                  children: [
                    ///space
                    const Gap(10),

                    ///text field row
                    Center(
                      child: Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: List.generate(
                            productIdList.length,
                            (index) => unSoldProductTile(
                              productId:  "${productIdList[index].productId}",
                              batchNumber: "${productIdList[index].batchNumber}",
                              batchQty: "${productIdList[index].batchQty}",
                              holderType: "${productIdList[index].holderType}",
                              watt: "${productIdList[index].watt}",
                              size: "${productIdList[index].size}",
                              importDate: "${productIdList[index].importDate}",
                              icon: PopupMenuButton(
                                color: red2,
                                iconColor: red2,
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                    value: MenuItem.item1,
                                    child: Text(
                                      "Issue to Dealer",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                  const PopupMenuItem(
                                    value: MenuItem.item2,
                                    child: Text(
                                      "Get Label for Box",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                  const PopupMenuItem(
                                    value: MenuItem.item3,
                                    child: Text(
                                      "Get Guarantee Label",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                  const PopupMenuItem(
                                    value: MenuItem.item3,
                                    child: Text(
                                      "Show Product QR",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: white,
                                      ),
                                    ),
                                  ),
                                ],
                                onSelected: (value) {
                                  if (value == MenuItem.item1) {
                                    ///clicked item 1
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const DealersListScreen()));
                                      } else if (value == MenuItem.item2) {
                                        //odo clicked item 2
                                      } else if (value == MenuItem.item3) {
                                        //todo clicked item 3
                                      }else if (value == MenuItem.item4) {
                                    //todo clicked item 2
                                  }
                                  },
                              ),
                            )),
                      )
                    )
                  ]
                )
              )
            ),
            bottomSheet: Container(
              color: black3,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: NumberPagination(
                  onPageChanged: (int pageNumber) {
                    //To optimize further,
                    // use a package that supports partial updates instead of setState
                    setState(() {
                      selectedPageNumber = pageNumber;
                    });
                  },
                  firstPageIcon: const Icon(
                    Icons.skip_previous_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  previousPageIcon: const Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  nextPageIcon: const Icon(
                    Icons.navigate_next_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  lastPageIcon: const Icon(
                    Icons.skip_next_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  unSelectedButtonColor: white,
                  selectedButtonColor: red2,
                  controlButtonColor: red2,
                  buttonRadius: 100,
                  visiblePagesCount: 10,
                  totalPages: 100,
                  fontSize: 12,
                  numberButtonSize: const Size(20, 20),
                  controlButtonSize: const Size(25, 25),
                  currentPage: selectedPageNumber,
                ),
              ),
            ),
          );
  }
}
