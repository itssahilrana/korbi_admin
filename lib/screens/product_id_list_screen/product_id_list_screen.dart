import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/screens/product_id_creation/product_id_creation_screen.dart';
import 'package:korbi_admin/screens/product_id_list_screen/product_list_screen.dart';
import 'package:korbi_admin/screens/product_id_list_screen/sold_screen.dart';
import 'package:korbi_admin/screens/product_id_list_screen/un_sold_screen.dart';
import 'package:korbi_admin/widgets/edge_button.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:text_scroll/text_scroll.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../search_screen/search_screen.dart';

enum MenuItem {
  item1,
  item2,
  item3,
}



class ProductIdListScreen extends StatefulWidget {
  const ProductIdListScreen({super.key});

  @override
  State<ProductIdListScreen> createState() => _ProductIdListScreenState();
}

class _ProductIdListScreenState extends State<ProductIdListScreen> {
  int selectedPageNumber = 1;
  String productValue = "UnSold";
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Scaffold(
            body: Column(
              children: [
                ///space
                const Gap(15),

                ///plot
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    alignment: Alignment.center,
                    //width: queryWidth*0.95,
                    height: queryHeight * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: black2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///space
                          const Gap(5),

                          ///buttons
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

                              ///heading
                              const Text(
                                "Product ID List",
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),

                              ///space
                              const Spacer(),

                              ///product id button
                              edgeButton(
                                  text: "Create New Product",
                                  backgroundColor: greyDark,
                                  disabledBackgroundColor: greyDark,
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (index) => const ProductIdCreationScreen()));
                                  }),

                              ///sold button
                              edgeButton(
                                  text: "Sold",
                                  backgroundColor:
                                      productValue == "Sold" ? red2 : greyDark,
                                  onPressed: () {
                                    setState(() {
                                      productValue = "Sold";
                                    });
                                  }),

                              ///space
                              const Gap(10),

                              ///Unsold button
                              edgeButton(
                                  text: "UnSold",
                                  backgroundColor: productValue == "UnSold"
                                      ? red2
                                      : greyDark,
                                  onPressed: () {
                                    setState(() {
                                      productValue = "UnSold";
                                    });
                                  }),

                              ///popup button
                              Visibility(
                                visible: productValue == "UnSold",
                                child: PopupMenuButton(
                                  color: red2,
                                  iconColor: red2,
                                  itemBuilder: (context) => [
                                    const PopupMenuItem(
                                      value: MenuItem.item1,
                                      child: Text(
                                        "QR Code",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      value: MenuItem.item2,
                                      child: Text(
                                        "List",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      value: MenuItem.item3,
                                      child: Text(
                                        "Search",
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
                                    } else if (value == MenuItem.item2) {
                                      ///clicked item 2
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => const ProductListScreen()));
                                    } else if (value == MenuItem.item3) {
                                      ///clicked item 3
                                      Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => const SearchScreen()));
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),

                          ///space
                          const Gap(8),

                          ///space
                          const Gap(15),

                          productValue == "Sold"
                              ? const SoldScreen()
                              : productValue == "UnSold"
                                  ? const UnSoldScreen()
                                  : const SizedBox(),
                        ],
                      ),
                    ),
                    //do manage state
                  ),
                ),

                ///space
                const Gap(20),
                NumberPagination(
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
              ],
            ),
          )
        : Scaffold(
            appBar: AppBar(
              leadingWidth: 50,
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
              title: const TextScroll(
                "Product ID List          ",
                mode: TextScrollMode.endless,
                velocity: Velocity(pixelsPerSecond: Offset(30, 10)),
                delayBefore: Duration(seconds: 0),
                numberOfReps: 1000,
                pauseBetween: Duration(milliseconds: 1),
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
                textAlign: TextAlign.right,
                selectable: true,
              ),
              actions: [
                ///sold button
                edgeButton(
                    text: "Sold",
                    backgroundColor: productValue == "Sold" ? red2 : greyDark,
                    onPressed: () {
                      setState(() {
                        productValue = "Sold";
                      });
                    }),

                ///Unsold button
                edgeButton(
                    text: "UnSold",
                    backgroundColor: productValue == "UnSold" ? red2 : greyDark,
                    onPressed: () {
                      setState(() {
                        productValue = "UnSold";
                      });
                    }),

                ///popup button
                Visibility(
                  visible: productValue == "UnSold",
                  child: PopupMenuButton(
                    color: red2,
                    iconColor: red2,
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: MenuItem.item1,
                        child: Text(
                          "QR Code",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: white,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: MenuItem.item2,
                        child: Text(
                          "List",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: white,
                          ),
                        ),
                      ),
                      const PopupMenuItem(
                        value: MenuItem.item3,
                        child: Text(
                          "Search",
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
                      } else if (value == MenuItem.item2) {
                        ///clicked item 2
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ProductListScreen()));
                      } else if (value == MenuItem.item3) {
                        ///clicked item 3
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SearchScreen()));
                      }
                    },
                  ),
                ),

                ///space
                const Gap(5),
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///space
                  const Gap(10),

                  productValue == "Sold"
                      ? const SoldScreen()
                      : productValue == "UnSold"
                          ? const UnSoldScreen()
                          : const SizedBox(),
                ],
              ),
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
