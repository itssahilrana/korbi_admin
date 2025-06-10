import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/screens/dealers_screen/dealers_screen.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../../widgets/edge_button.dart';
import '../../widgets/new_textfield.dart';
import '../../widgets/textField.dart';
import '../search_screen/search_screen.dart';

class CreateDealerScreen extends StatefulWidget {
  const CreateDealerScreen({super.key});

  @override
  State<CreateDealerScreen> createState() => _CreateDealerScreenState();
}

class _CreateDealerScreenState extends State<CreateDealerScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController gstController = TextEditingController();
  bool isButtonActive = false;
  void pp() {}
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
      if (emailController.text.isNotEmpty) {
        if(!mounted) return;
        Navigator.push(context,
            MaterialPageRoute(builder: (index) => const DealersScreen()));
        // action
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: red3,
            content: Text(
              'Dealer Created Successfully',
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
                "Create Dealer",
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

                                      newTextField(
                                          hintText: "Full Name",
                                          controller: nameController,
                                          keyboardType: TextInputType.name,
                                          onChanged: (value) {
                                            setState(() {
                                              isButtonActive = nameController.text.isNotEmpty ? true : false;
                                            });
                                          }),

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
                                          hintText: "Full Address",
                                          controller: addressController,
                                          keyboardType:
                                              TextInputType.streetAddress,
                                          onChanged: (value) {
                                            setState(() {
                                              isButtonActive = addressController.text.isNotEmpty ? true : false;
                                            });
                                          }),

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
                                          hintText: "James462@gmail.com",
                                          controller: emailController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          onChanged: (value) {
                                            setState(() {
                                              isButtonActive = emailController.text.isNotEmpty ? true : false;
                                            });
                                          }),

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
                                          hintText: "City",
                                          controller: cityController,
                                          keyboardType: TextInputType.text,
                                          onChanged: (value) {
                                            setState(() {
                                              isButtonActive = cityController.text.isNotEmpty ? true : false;
                                            });
                                          }),

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
                                          hintText: "State",
                                          controller: stateController,
                                          keyboardType: TextInputType.text,
                                          onChanged: (value) {
                                            setState(() {
                                              isButtonActive = stateController.text.isNotEmpty ? true : false;
                                            });
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
                                            "Mobile Number",
                                            style: TextStyle(
                                              color: black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),

                                          textField(
                                              hintText: "+91 9784556165",
                                              controller: mobileController,
                                              keyboardType:
                                                  TextInputType.number,
                                              onChanged: (value) {
                                                setState(() {
                                                  isButtonActive = mobileController.text.isNotEmpty ? true : false;
                                                });
                                              }),

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
                                              hintText: "FU6454648K8",
                                              controller: gstController,
                                              keyboardType: TextInputType.text,
                                              onChanged: (value) {
                                                setState(() {
                                                  isButtonActive = gstController.text.isNotEmpty ? true : false;
                                                });
                                              }),

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
                                    text: "Save Dealer",
                                    backgroundColor: greyDark,
                                    disabledBackgroundColor: black,
                                    onPressed:
                                        isButtonActive == true ? isButton : pp,
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
                "Create Dealer",
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
                    size: 20,
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
                                          "Name of Dealer",
                                          style: TextStyle(
                                            color: black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                        
                                        newTextField(
                                            hintText: "Full Name",
                                            controller: nameController,
                                            keyboardType: TextInputType.name,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = nameController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
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
                                            hintText: "Full Address",
                                            controller: addressController,
                                            keyboardType:
                                                TextInputType.streetAddress,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = addressController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
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
                                            hintText: "James462@gmail.com",
                                            controller: emailController,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = emailController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
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
                                            hintText: "City",
                                            controller: cityController,
                                            keyboardType: TextInputType.text,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = cityController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
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
                                            hintText: "State",
                                            controller: stateController,
                                            keyboardType: TextInputType.text,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = stateController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
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
                                            hintText: "+91 9784556165",
                                            controller: mobileController,
                                            keyboardType:
                                            TextInputType.number,
                                            onChanged: (value) {
                                             setState(() {
                                               isButtonActive = mobileController.text.isNotEmpty ? true : false;
                                             });
                                            }),
                        
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
                                            hintText: "FU6454648K8",
                                            controller: gstController,
                                            keyboardType: TextInputType.text,
                                            onChanged: (value) {
                                              setState(() {
                                                isButtonActive = gstController.text.isNotEmpty ? true : false;
                                              });
                                            }),
                        
                                        ///space
                                        const Gap(20),

                                        ///button
                                        Center(
                                          child: edgeButton(
                                            text: "  Create Dealer  ",
                                            backgroundColor: red2,
                                            disabledBackgroundColor: red1,
                                            onPressed: isButtonActive == true ? isButton : pp,
                                          ),
                                        ),

                                        ///space
                                        const Gap(10),
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
