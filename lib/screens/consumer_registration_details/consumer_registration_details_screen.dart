import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/modals/total_customers_modal.dart';
import 'package:korbi_admin/widgets/registration_tile.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:text_scroll/text_scroll.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../search_screen/search_screen.dart';

List<TotalCustomersModal> coustomerRegistrationList = [
  TotalCustomersModal(
    name: "Rajesh Yadav",
    email: "rajesh646@gmail.com",
    mobileNumber: "9854765428",
    productId: "46468945",
    guaranteeStart: "05/11/24",
    guaranteeEnd: "05/11/25",
  ),
  TotalCustomersModal(
    name: "Harpreet Singh",
    email: "preet5454@gmail.com",
    mobileNumber: "98949466124",
    productId: "46258945",
    guaranteeStart: "05/11/24",
    guaranteeEnd: "05/11/25",
  ),
  TotalCustomersModal(
    name: "Sonu Kumar",
    email: "kumarsonu@gmail.com",
    mobileNumber: "9854765428",
    productId: "45468945",
    guaranteeStart: "05/11/24",
    guaranteeEnd: "05/11/25",
  ),
  TotalCustomersModal(
    name: "Shyam Malik",
    email: "malik44@gmail.com",
    mobileNumber: "9897945428",
    productId: "9764691",
    guaranteeStart: "05/11/24",
    guaranteeEnd: "05/11/25",
  ),
  TotalCustomersModal(
    name: "Rajesh Yadav",
    email: "rajesh646@gmail.com",
    mobileNumber: "9854765428",
    productId: "46468945",
    guaranteeStart: "05/11/24",
    guaranteeEnd: "05/11/25",
  ),
  TotalCustomersModal(
    name: "Rajesh Yadav",
    email: "rajesh646@gmail.com",
    mobileNumber: "9854765428",
    productId: "46468945",
    guaranteeStart: "05/11/24",
    guaranteeEnd: "05/11/25",
  ),
];

class ConsumerRegistrationDetailsScreen extends StatefulWidget {
  const ConsumerRegistrationDetailsScreen({super.key});

  @override
  State<ConsumerRegistrationDetailsScreen> createState() =>
      _ConsumerRegistrationDetailsScreenState();
}

class _ConsumerRegistrationDetailsScreenState
    extends State<ConsumerRegistrationDetailsScreen> {
  int selectedPageNumber = 1;
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
                    height: queryHeight * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: black2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ///space
                          const Gap(20),

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
                                "Consumer Registration Details",
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
                                highlightColor: black,
                                hoverColor: black6,
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
                          const Gap(10),

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
                                      "E-Mail ID",
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
                                      "Guarantee Start",
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
                                      "Guarantee End",
                                      style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              rows: List.generate(
                                  coustomerRegistrationList.length, (index) {
                                return DataRow(cells: <DataCell>[
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${coustomerRegistrationList[index].name}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 180,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${coustomerRegistrationList[index].email}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${coustomerRegistrationList[index].mobileNumber}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${coustomerRegistrationList[index].productId}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${coustomerRegistrationList[index].guaranteeStart}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 80,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${coustomerRegistrationList[index].guaranteeEnd}",
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
            ),
          )

        ///mobile Screen
        : Scaffold(
            appBar: AppBar(
              leading:  IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: black,
                ),
              ),
              title: const SizedBox(
                width: 140,
                child: TextScroll(
                  'Consumer Registration Details',
                  mode: TextScrollMode.bouncing,
                  velocity: Velocity(pixelsPerSecond: Offset(30, 10)),
                  delayBefore: Duration(seconds: 1),
                  numberOfReps: 50,
                  pauseBetween: Duration(milliseconds: 400),
                  style: TextStyle(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.right,
                  selectable: true,
                ),
              ),
              actions: [
                ///search button
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (index) => const SearchScreen()));
                  },
                  highlightColor: black,
                  hoverColor: black6,
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
                    const Gap(15),

                    ///registration details
                    Center(
                      child: Wrap(
                        spacing: 15,
                        runSpacing: 15,
                        children: List.generate(
                          coustomerRegistrationList.length, (index)=> registrationTile(
                          name: "${coustomerRegistrationList[index].name}",
                          email: "${coustomerRegistrationList[index].email}",
                          mobileNumber: "${coustomerRegistrationList[index].mobileNumber}",
                          productId: "${coustomerRegistrationList[index].productId}",
                          guaranteeStart: "${coustomerRegistrationList[index].guaranteeStart}",
                          guaranteeEnd: "${coustomerRegistrationList[index].guaranteeEnd}",
                        ),),
                      ),
                    ),

                    ///space
                    const Gap(20),

                  ],
                ),
              ),
            ),
          );
  }
}
