import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/modals/total_customers_modal.dart';
import 'package:korbi_admin/screens/dealers_screen/create_dealer_screen.dart';
import 'package:korbi_admin/screens/dealers_screen/dealer_details_screen.dart';
import 'package:korbi_admin/widgets/dealers_tile.dart';
import 'package:number_pagination/number_pagination.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../../widgets/edge_button.dart';
import '../../widgets/round_button.dart';
import '../search_screen/search_screen.dart';

List<TotalCustomersModal> dealersList = [
  TotalCustomersModal(
    name: "Raj Kumar",
    email: "Raj@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
  TotalCustomersModal(
    name: "Aman",
    email: "Aman@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
  TotalCustomersModal(
    name: "Raghav Arora",
    email: "Raghav@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
  TotalCustomersModal(
    name: "Kamini",
    email: "Raj@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
  TotalCustomersModal(
    name: "Raj",
    email: "Raj@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
  TotalCustomersModal(
    name: "Raj",
    email: "Raj@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
  TotalCustomersModal(
    name: "Raj",
    email: "Raj@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
  TotalCustomersModal(
    name: "Raj",
    email: "Raj@gmail.com",
    city: "Sonipat",
    state: "Harayana",
    mobileNumber: "6464646448",
    gstNumber: "5j65465ty556566",
    address: "112, hello, 6664646795",
  ),
];

class DealersScreen extends StatefulWidget {
  const DealersScreen({super.key});

  @override
  State<DealersScreen> createState() => _DealersScreenState();
}

class _DealersScreenState extends State<DealersScreen> {
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
                          const Gap(5),

                          ///heading
                          Row(
                            children: [
                              const Text(
                                "Good Morning !!",
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),

                              ///space
                              const Spacer(),

                              edgeButton(
                                  text: "Add Dealer Account",
                                  backgroundColor: greyDark,
                                  disabledBackgroundColor: greyDark,
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (index) => const CreateDealerScreen()));
                                  }),
                            ],
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
                                "Dealers",
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
                          const Gap(8),

                          Center(
                            child: DataTable(
                              horizontalMargin: 20,
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
                                      "Gst Number",
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
                                      "Details",
                                      style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              rows: List.generate(dealersList.length, (index) {
                                return DataRow(cells: <DataCell>[
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        "${dealersList[index].name}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        "${dealersList[index].email}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${dealersList[index].mobileNumber}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${dealersList[index].city}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${dealersList[index].state}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${dealersList[index].gstNumber}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    roundButton(
                                        text: "More Details",
                                        backgroundColor: red2,
                                        disabledBackgroundColor: red2,
                                        onPressed: () {
                                          Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => DealerDetailsScreen(
                                            name: "${dealersList[index].name}",
                                            address: "${dealersList[index].address}",
                                            email: "${dealersList[index].email}",
                                            city: "${dealersList[index].city}",
                                            state: "${dealersList[index].state}",
                                            mobileNumber: "${dealersList[index].mobileNumber}",
                                            gstNumber: "${dealersList[index].gstNumber}",

                                          ),
                                          ));
                                        }),
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
                "Dealers",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              actions: [
                ///create new dealer
                IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: black,
                            title: const Center(
                              child: Text(
                                "Create New Dealer",
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
                                            context, MaterialPageRoute(builder: (index)=> const CreateDealerScreen()));
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

                ///search button
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (index) => const SearchScreen()));
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
                       dealersList.length, (index)=> dealerTile(
                        buttonText: "More Details",
                          name: "${dealersList[index].name}",
                          email: "${dealersList[index].email}",
                          phone: "${dealersList[index].mobileNumber}",
                          city: "${dealersList[index].city}",
                          state:"${dealersList[index].state}",
                          gstNumber:"${dealersList[index].gstNumber}",
                        onPress: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => DealerDetailsScreen(
                            name: "${dealersList[index].name}",
                            address: "${dealersList[index].address}",
                            email: "${dealersList[index].email}",
                            city: "${dealersList[index].city}",
                            state: "${dealersList[index].state}",
                            mobileNumber: "${dealersList[index].mobileNumber}",
                            gstNumber: "${dealersList[index].gstNumber}",
                          ),
                          ));
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
