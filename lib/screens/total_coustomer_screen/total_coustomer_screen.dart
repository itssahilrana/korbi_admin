import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/modals/total_customers_modal.dart';
import 'package:korbi_admin/screens/search_screen/search_screen.dart';
import 'package:korbi_admin/widgets/edge_button.dart';
import 'package:korbi_admin/widgets/round_button.dart';
import 'package:korbi_admin/widgets/total_customers_tile.dart';
import 'package:number_pagination/number_pagination.dart';
import '../../constants.dart';
import '../../responsive_class.dart';

List<TotalCustomersModal> totalCustomerList = [
  TotalCustomersModal(
      name: "Rajesh Kumar",
      email: "rajesh@gmail.com",
      mobileNumber: "9545446641",
      city: "Jalandhar",
      state: "Punjab"),
  TotalCustomersModal(
      name: "Ramesh",
      email: "ramesh@gmail.com",
      mobileNumber: "975284352",
      city: "Lucknow",
      state: "Uttar Pradesh"),
  TotalCustomersModal(
      name: "Pawan",
      email: "pawan@gmail.com",
      mobileNumber: "959552562",
      city: "Bhiwani",
      state: "Harayana"),
  TotalCustomersModal(
      name: "ArshDeep",
      email: "arshdeep54@gmail.com",
      mobileNumber: "964421684",
      city: "Panipat",
      state: "Harayana"),
  TotalCustomersModal(
      name: "Hardeep",
      email: "deep542dg@gmail.com",
      mobileNumber: "97982349",
      city: "Jalandhar",
      state: "Punjab"),
  TotalCustomersModal(
      name: "Rajesh Kumar",
      email: "rraj625@gmail.com",
      mobileNumber: "978425822",
      city: "Jalandhar",
      state: "Punjab"),
  TotalCustomersModal(
      name: "Pardeep Rathore",
      email: "rajesh@gmail.com",
      mobileNumber: "99978454852",
      city: "Jalandhar",
      state: "punjab"),
  TotalCustomersModal(
      name: "Hardeep",
      email: "rajesh@gmail.com",
      mobileNumber: "54545446641",
      city: "Jalandhar",
      state: "punjab"),
];

class TotalCoustomerScreen extends StatefulWidget {
  const TotalCoustomerScreen({super.key});

  @override
  State<TotalCoustomerScreen> createState() => _TotalCoustomerScreenState();
}

class _TotalCoustomerScreenState extends State<TotalCoustomerScreen> {
  var selectedPageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Scaffold(
            body: Center(
                child: Column(
              children: [
                ///space
                const Gap(15),

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
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///space
                          const Gap(5),

                          ///heading
                          const Padding(
                            padding: EdgeInsets.fromLTRB(25, 5, 10, 5),
                            child: Text(
                              "Good Morning Sir!!",
                              style: TextStyle(
                                color: black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),

                          ///space
                          const Gap(5),

                          ///text field row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                "Total Customers",
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),

                              ///space
                              const Spacer(),

                              ///search button
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (index) =>
                                              const SearchScreen()));
                                },
                                highlightColor: black4,
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
                            ],
                          ),

                          ///space
                          const Gap(15),

                          ///customer details
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
                                fontWeight: FontWeight.w600,
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
                                        fontSize: 16,
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
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Expanded(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "E-Mail",
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
                                      "City",
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
                                      "State",
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
                                      "Block",
                                      style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              rows: List.generate(totalCustomerList.length,
                                  (index) {
                                return DataRow(cells: <DataCell>[
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        "${totalCustomerList[index].name}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${totalCustomerList[index].mobileNumber}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${totalCustomerList[index].email}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${totalCustomerList[index].city}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${totalCustomerList[index].state}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: roundButton(
                                        text: "Block",
                                        backgroundColor: red2,
                                        disabledBackgroundColor: red2,
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  backgroundColor: black,
                                                  title: const Center(
                                                    child: Text(
                                                      "Are you sure you want Block?",
                                                      style: TextStyle(
                                                        color: white,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ),
                                                  actions: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        edgeButton(
                                                            text: "Cancel",
                                                            backgroundColor:
                                                                black5,
                                                            disabledBackgroundColor:
                                                                black5,
                                                            onPressed: () {
                                                              //todo
                                                            }),
                                                        roundButton(
                                                            text: "Sure",
                                                            backgroundColor:
                                                                red2,
                                                            disabledBackgroundColor:
                                                                red2,
                                                            onPressed: () {
                                                              //todo
                                                            }),
                                                      ],
                                                    ),
                                                  ],
                                                );
                                              });
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
                    // use a package that supports partial updates instead of setState (e.g. riverpod)
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
            )),
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
                "Total Customers",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (index) => const SearchScreen()));
                  },
                  highlightColor: black4,
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

                ///space
                const Gap(10),
              ],
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: List.generate(
                        totalCustomerList.length,
                        (index) => totalCustomerTile(
                          name: "${totalCustomerList[index].name}",
                          email: "${totalCustomerList[index].email}",
                          phone: "${totalCustomerList[index].mobileNumber}",
                          city: "${totalCustomerList[index].city}",
                          state: "${totalCustomerList[index].state}",
                          onBlock: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: black,
                                    title: const Center(
                                      child: Text(
                                        "Are you sure you want Block?",
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
                                              text: "Sure",
                                              backgroundColor: red2,
                                              disabledBackgroundColor: red2,
                                              onPressed: () {
                                                //todo
                                              }),
                                        ],
                                      ),
                                    ],
                                  );
                                });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///page indicator
            bottomSheet: Container(
              height: 50,
              color: black3,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: NumberPagination(
                  onPageChanged: (int pageNumber) {
                    //To optimize further,
                    // use a package that supports partial updates instead of setState (e.g. riverpod)
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
