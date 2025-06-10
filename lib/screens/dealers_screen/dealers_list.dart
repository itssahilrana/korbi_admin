import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/modals/total_customers_modal.dart';
import 'package:korbi_admin/widgets/dealers_tile.dart';
import 'package:number_pagination/number_pagination.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../../widgets/edge_button.dart';
import '../../widgets/round_button.dart';
import '../product_id_creation/product_id_creation_screen.dart';
import '../search_screen/search_screen.dart';

List<TotalCustomersModal> dealersList = [
  TotalCustomersModal(
    name: "Ramesh Mahajan fg",
    mobileNumber: "+91 9854754587",
    address: "GT karnal road, NK 44, near murthal, Haryana, 131021",
    email: "rameshmahajan94@gmail.com",
    gstNumber: "FY96565696FH",
    state: "Harayana",
    city: "Karnal",
  ),
  TotalCustomersModal(
    name: "Ramesh Mahajan",
    mobileNumber: "+91 9854754587",
    address: "GT karnal road, NK 44, near murthal, Haryana, 131021",
    email: "rameshmahajan94@gmail.com",
    gstNumber: "FY96565696FH",
    state: "Harayana",
    city: "Karnal",
  ),
  TotalCustomersModal(
    name: "Ramesh Mahajan",
    mobileNumber: "+91 9854754587",
    address: "GT karnal road, NK 44, near murthal, Haryana, 131021",
    email: "rameshmahajan94@gmail.com",
    gstNumber: "FY96565696FH",
    state: "Harayana",
    city: "Karnal",
  ),
  TotalCustomersModal(
    name: "Ramesh Mahajan",
    mobileNumber: "+91 9854754587",
    address: "GT karnal road, NK 44, near murthal, Haryana, 131021",
    email: "rameshmahajan94@gmail.com",
    gstNumber: "FY96565696FH",
    state: "Harayana",
    city: "Karnal",
  ),
  TotalCustomersModal(
    name: "Ramesh Mahajan",
    mobileNumber: "+91 9854754587",
    address: "GT karnal road, NK 44, near murthal, Haryana, 131021",
    email: "rameshmahajan94@gmail.com",
    gstNumber: "FY96565696FH",
    state: "Harayana",
    city: "Karnal",
  ),
];

class DealersListScreen extends StatefulWidget {
  const DealersListScreen({super.key});

  @override
  State<DealersListScreen> createState() => _DealersListScreenState();
}

class _DealersListScreenState extends State<DealersListScreen> {
  int selectedPageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ?Scaffold(
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
              height: queryHeight*0.8,
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
                          "Dealers List",
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
                            text: "Add New Dealer",
                            backgroundColor: greyDark,
                            disabledBackgroundColor: greyDark,
                            onPressed: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (index)=> const ProductIdCreationScreen()));
                            }
                        ),

                        ///space
                        const Gap(8),

                        ///search button
                        IconButton(
                          onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (index)=> const SearchScreen()));
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
                        const Gap(8),
                      ],
                    ),

                    ///space
                    const Gap(10),

                    Center(
                      child: DataTable(
                        horizontalMargin: 100,
                        dataTextStyle: const TextStyle(
                          color: black,
                        ),
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
                        columns: const <DataColumn>[
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Name",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Mobile Number",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                "E-mail",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                "City",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                "State",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Gst Number",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          DataColumn(
                            label: Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Issue",
                                style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                        rows:List.generate(
                            dealersList.length, (index) {
                          return  DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  Text(
                                    textAlign: TextAlign.center,
                                    "${dealersList[index].name}",
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    textAlign: TextAlign.center,
                                    "${dealersList[index].mobileNumber}",
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    textAlign: TextAlign.center,
                                    "${dealersList[index].email}",
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    textAlign: TextAlign.center,
                                    "${dealersList[index].city}",
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    textAlign: TextAlign.center,
                                    "${dealersList[index].state}",
                                  ),
                                ),
                                DataCell(
                                  Text(
                                    textAlign: TextAlign.center,
                                    "${dealersList[index].gstNumber}",
                                  ),
                                ),
                                DataCell(
                                  Center(
                                    child: edgeButton(
                                        text: "Issue",
                                        disabledBackgroundColor: red2,
                                        backgroundColor: red2,
                                        onPressed: (){
                                          //todo
                                      }
                                    ),
                                  ),
                                ),
                              ]);
                        }),
                      ),
                    ),

                  ],
                ),

              ),
              //do manage state
            ),
          ),

          ///space
          const Gap(20),

          ///page indicator
          NumberPagination(
            onPageChanged: (int pageNumber) {
              //To optimize further,
              // use a package that supports partial updates instead of setState
              setState(() {
                selectedPageNumber = pageNumber;
              });
            },
            firstPageIcon:  const Icon(
              Icons.skip_previous_outlined,
              color: Colors.white,
              size: 20,
            ),
            previousPageIcon:  const Icon(
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
            unSelectedButtonColor: black3,
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
          "Dealers List",
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              size: 25,
              color: white,
            ),
          ),

          ///space
          const Gap(8),

          ///search button
          IconButton(
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (index)=> const SearchScreen()));
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
          const Gap(8),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            children: [
              ///space
              const Gap(10),

              ///dealers list
              Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: List.generate(dealersList.length, (index)=> dealerTile(
                      name: "${dealersList[index].name}",
                      email: "${dealersList[index].email}",
                      phone: "${dealersList[index].mobileNumber}",
                      city: "${dealersList[index].city}",
                      state: "${dealersList[index].state}",
                      gstNumber: "${dealersList[index].gstNumber}",
                    buttonText: "Issue",
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
