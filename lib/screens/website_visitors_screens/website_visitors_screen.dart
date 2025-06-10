import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/modals/total_customers_modal.dart';
import 'package:korbi_admin/widgets/edge_button.dart';
import 'package:korbi_admin/widgets/website_vistors_tile.dart';
import 'package:number_pagination/number_pagination.dart';
import 'package:text_scroll/text_scroll.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../../widgets/round_button.dart';
import '../search_screen/search_screen.dart';

List<TotalCustomersModal> websiteVisitorsList = [
  TotalCustomersModal(
    name: "Rajesh Kumar",
    email: "rajesh@gmail.com",
    mobileNumber: "9545446641",
    date: "12/5/2024",
    checkIn: "11 : 15",
    checkOut: "12 : 10",
  ),
  TotalCustomersModal(
    name: "Rajesh Kumar",
    email: "rajesh@gmail.com",
    mobileNumber: "9545446641",
    date: "12/5/2024",
    checkIn: "11 : 15",
    checkOut: "12 : 10",
  ),
  TotalCustomersModal(
    name: "Rajesh Kumar",
    email: "rajesh@gmail.com",
    mobileNumber: "9545446641",
    date: "12/5/2024",
    checkIn: "11 : 15",
    checkOut: "12 : 10",
  ),
  TotalCustomersModal(
    name: "Rajesh Kumar",
    email: "rajesh@gmail.com",
    mobileNumber: "9545446641",
    date: "12/5/2024",
    checkIn: "11 : 15",
    checkOut: "12 : 10",
  ),
  TotalCustomersModal(
    name: "Rajesh Kumar",
    email: "rajesh@gmail.com",
    mobileNumber: "9545446641",
    date: "12/5/2024",
    checkIn: "11 : 15",
    checkOut: "12 : 10",
  ),
  TotalCustomersModal(
    name: "Rajesh Kumar",
    email: "rajesh@gmail.com",
    mobileNumber: "9545446641",
    date: "12/5/2024",
    checkIn: "11 : 15",
    checkOut: "12 : 10",
  ),
];

class WebsiteVisitorsScreen extends StatefulWidget {
  const WebsiteVisitorsScreen({super.key});

  @override
  State<WebsiteVisitorsScreen> createState() => _WebsiteVisitorsScreenState();
}

class _WebsiteVisitorsScreenState extends State<WebsiteVisitorsScreen> {
  int selectedPageNumber = 1;
  bool isChecked = false;
  bool isVisible = false;
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

                              Visibility(
                                visible: isVisible,
                                child: edgeButton(
                                    text: "Remove",
                                    backgroundColor: red2,
                                    disabledBackgroundColor: white,
                                    onPressed: () {
                                      //todo
                                    }),
                              ),

                              edgeButton(
                                  text: "Add Visitor",
                                  backgroundColor: greyDark,
                                  disabledBackgroundColor: greyDark,
                                  onPressed: () {
                                    //todo
                                  }),

                              edgeButton(
                                  text: "Export",
                                  backgroundColor: greyDark,
                                  disabledBackgroundColor: greyDark,
                                  onPressed: () {
                                    //todo
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
                                "Website Visitors",
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
                                fontWeight: FontWeight.w600,
                              ),
                              columns: const <DataColumn>[
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
                                      "Date",
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
                                      "Check In",
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
                                      "Check Out",
                                      style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              rows: List.generate(websiteVisitorsList.length,
                                  (index) {
                                return DataRow(cells: <DataCell>[
                                  DataCell(
                                    SizedBox(
                                        child: Checkbox(
                                      activeColor: red2,
                                      value: isVisible,
                                      onChanged: (isChecked) {
                                        setState(() {
                                          isChecked = true;
                                          if (isVisible == true) {
                                            isVisible = false;
                                          } else {
                                            isVisible = true;
                                          }
                                        });
                                      },
                                    )),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        "${websiteVisitorsList[index].name}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${websiteVisitorsList[index].mobileNumber}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${websiteVisitorsList[index].email}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${websiteVisitorsList[index].date}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${websiteVisitorsList[index].checkIn}",
                                      ),
                                    ),
                                  ),
                                  DataCell(
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "${websiteVisitorsList[index].checkOut}",
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
             title: const TextScroll(
               "Website Visitor's",
               mode: TextScrollMode.bouncing,
               velocity: Velocity(pixelsPerSecond: Offset(30, 10)),
               delayBefore: Duration(seconds: 1),
               numberOfReps: 50,
               pauseBetween: Duration(milliseconds: 400),
               style: TextStyle(
                 color: black,
                 fontSize: 14,
                 fontWeight: FontWeight.w600,
               ),
               textAlign: TextAlign.right,
               selectable: true,
             ),
             actions: [
               Visibility(
                 visible: true,
                 child: edgeButton(
                     text: "Remove",
                     backgroundColor: red2,
                     disabledBackgroundColor: white,
                     onPressed: () {
                       showDialog(
                           context: context,
                           builder: (context) {
                             return AlertDialog(
                               backgroundColor: black,
                               title: const Center(
                                 child: Text(
                                   "Remove all Visitor's?",
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
                                         text: "Remove",
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
                     }),
               ),

               ///space
               const Gap(10),

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

                    ///website visitor's
                    Center(
                      child: Wrap(
                        spacing: 15,
                        runSpacing: 10,
                        children: List.generate(
                            websiteVisitorsList.length, (index)=> websiteVisitorsTile(
                            date: "${websiteVisitorsList[index].date}",
                            name: "${websiteVisitorsList[index].name}",
                            mobileNumber: "${websiteVisitorsList[index].mobileNumber}",
                            email: "${websiteVisitorsList[index].email}",
                          onRemove: (){
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: black,
                                    title: const Center(
                                      child: Text(
                                        "Remove  Visitor?",
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
                                              text: "Remove",
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
                          }
                        )),
                      ),
                    ),

                    ///space
                    const Gap(20),

                  ],
                ),
              ),
            ),
             bottomSheet: Container(
               height: 50,
               color: black3,
               child:  ///page indicator
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
