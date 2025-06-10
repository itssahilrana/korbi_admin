import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/widgets/edge_button.dart';
import 'package:korbi_admin/widgets/textField.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../../widgets/new_textfield.dart';
import '../search_screen/search_screen.dart';

class DealerDetailsScreen extends StatefulWidget {
  final String name;
  final String address;
  final String email;
  final String city;
  final String state;
  final String mobileNumber;
  final String gstNumber;

  const DealerDetailsScreen({
    super.key,
    required this.name,
    required this.address,
    required this.email,
    required this.city,
    required this.state,
    required this.mobileNumber,
    required this.gstNumber,
  });

  @override
  State<DealerDetailsScreen> createState() => _DealerDetailsScreenState();
}

class _DealerDetailsScreenState extends State<DealerDetailsScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController gstNumberController = TextEditingController();

  @override
  void initState() {
    nameController.text = widget.name;
    emailController.text = widget.email;
    addressController.text = widget.address;
    cityController.text = widget.city;
    stateController.text = widget.state;
    mobileNumberController.text = widget.mobileNumber;
    gstNumberController.text = widget.gstNumber;
    super.initState();
  }

  bool isReadOnly = true;
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) 
        ? Scaffold(
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
                "Dealers Detail",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
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

                const Gap(10),
              ],
            ),
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
                                        "Name of Dealer",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      textField(
                                        hintText: "hint text",
                                        controller: nameController,
                                        isReadOnly: true,
                                      ),

                                      ///space
                                      const Gap(8),

                                      const Text(
                                        "Address",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                        hintText:
                                            "GT karnal road, NK 44, near murthal, Haryana, 131021",
                                        controller: addressController,
                                        isReadOnly: true,
                                      ),

                                      ///space
                                      const Gap(8),

                                      const Text(
                                        "Email Id",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                        hintText: "Ram@gmail.com",
                                        controller: emailController,
                                        isReadOnly: true,
                                      ),

                                      ///space
                                      const Gap(8),

                                      const Text(
                                        "Your City",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                        hintText: "Sonipat",
                                        controller: cityController,
                                        isReadOnly: true,
                                      ),

                                      ///space
                                      const Gap(8),

                                      const Text(
                                        "State",
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),

                                      newTextField(
                                        hintText: "Harayana",
                                        controller: stateController,
                                        isReadOnly: true,
                                      ),

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
                                            "Mobile Number",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          textField(
                                            hintText: "+91 **********",
                                            controller: mobileNumberController,
                                            isReadOnly: true,
                                          ),

                                          ///space
                                          const Gap(8),

                                          const Text(
                                            "Gst Number",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          newTextField(
                                            hintText: "KY6565555EY5",
                                            controller: gstNumberController,
                                            isReadOnly: true,
                                          ),

                                          ///space
                                          const Gap(8),
                                        ],
                                      ),
                                    ),
                                  ),

                                  ///space
                                  const Gap(200),

                                  ///review button
                                  edgeButton(
                                    text: "Update",
                                    backgroundColor: greyDark,
                                    disabledBackgroundColor: greyDark,
                                    onPressed: () {
                                      //todo
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
                "Dealers Detail",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
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

                const Gap(10),
              ],
            ),
            body: Column(
              children: [
                ///plot
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Container(
                    alignment: Alignment.center,
                    //width: queryWidth*0.95,
                    height: queryHeight*0.85,
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
                                  width: queryWidth*0.8,
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
                                          "Name of Dealer",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    
                                        textField(
                                          hintText: "Full Name ",
                                          controller: nameController,
                                          isReadOnly: isReadOnly,
                                        ),
                                    
                                        ///space
                                        const Gap(8),
                                    
                                        const Text(
                                          "Address",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    
                                        newTextField(
                                          hintText:
                                              "Provide Detailed Address",
                                          controller: addressController,
                                          isReadOnly: isReadOnly,
                                        ),
                                    
                                        ///space
                                        const Gap(8),
                                    
                                        const Text(
                                          "Email Id",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    
                                        newTextField(
                                          hintText: "Ram@gmail.com",
                                          controller: emailController,
                                          isReadOnly: isReadOnly,
                                        ),
                                    
                                        ///space
                                        const Gap(8),
                                    
                                        const Text(
                                          "Your City",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    
                                        newTextField(
                                          hintText: "Sonipat",
                                          controller: cityController,
                                          isReadOnly: isReadOnly,
                                        ),
                                    
                                        ///space
                                        const Gap(8),
                                    
                                        const Text(
                                          "State",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    
                                        newTextField(
                                          hintText: "Harayana",
                                          controller: stateController,
                                          isReadOnly: isReadOnly,
                                        ),
                                    
                                        ///space
                                        const Gap(5),
                                    
                                        ///name
                                        const Text(
                                          "Mobile Number",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    
                                        textField(
                                          hintText: "hint text",
                                          controller: mobileNumberController,
                                          isReadOnly: isReadOnly,
                                        ),
                                    
                                        ///space
                                        const Gap(8),
                                    
                                        const Text(
                                          "Gst Number",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                    
                                        newTextField(
                                          hintText: "JK656555IQ55",
                                          controller: gstNumberController,
                                          isReadOnly: isReadOnly,
                                          
                                        ),

                                        ///space
                                        const Gap(15),

                                        ///review button
                                        Center(
                                          child: edgeButton(
                                            text: "Review",
                                            backgroundColor: greyDark,
                                            disabledBackgroundColor: greyDark,
                                            onPressed: () {
                                              isReadOnly = false;
                                            },
                                          ),
                                        ),

                                        ///space
                                        const Gap(15),
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

              ],
            ),
          );
  }
}
