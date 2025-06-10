import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/constants.dart';

import '../../responsive_class.dart';
import '../../widgets/edge_button.dart';

class CoustomerDetailScreen extends StatefulWidget {
  final String name;
  final String email;
  final String mobileNumber;
  final String city;
  final String state;

  const CoustomerDetailScreen({
    super.key,
    required this.name,
    required this.email,
    required this.mobileNumber,
    required this.city,
    required this.state,
  });

  @override
  State<CoustomerDetailScreen> createState() => _CoustomerDetailScreenState();
}

class _CoustomerDetailScreenState extends State<CoustomerDetailScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();


  @override
  void initState() {
    nameController.text = widget.name;
    emailController.text = widget.email;
    mobileNumberController.text = widget.mobileNumber;
    cityController.text = widget.city;
    stateController.text = widget.state;

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Scaffold(
            appBar: AppBar(
              title: const Text(
                "Dealer Detail",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            body: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: queryWidth * 0.9,
                      height: queryHeight * 0.85,
                      decoration: BoxDecoration(
                        color: black3,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ///white box
                            Container(
                              width: queryWidth * 0.6,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    ///space
                                    const Gap(10),

                                    ///row
                                    Row(
                                      children: [
                                        const Text(
                                          "Name",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),

                                        ///space
                                        const Spacer(),

                                        ///name of coustomer
                                        SizedBox(
                                          width: queryWidth * 0.4,
                                          child: Text(
                                            textAlign: TextAlign.end,
                                            widget.name,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    ///space
                                    const Gap(8),

                                    ///row
                                    Row(
                                      children: [
                                        const Text(
                                          "Mobile Number",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),

                                        ///space
                                        const Spacer(),

                                        ///Mobile number of coustomer
                                        SizedBox(
                                          width: queryWidth * 0.4,
                                          child: Text(
                                            textAlign: TextAlign.end,
                                            widget.mobileNumber,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    ///space
                                    const Gap(8),

                                    ///row
                                    Row(
                                      children: [
                                        const Text(
                                          "E-Mail",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),

                                        ///space
                                        const Spacer(),

                                        ///Email of coustomer
                                        SizedBox(
                                          width: queryWidth * 0.4,
                                          child: Text(
                                            textAlign: TextAlign.end,
                                            widget.email,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    ///space
                                    const Gap(8),

                                    ///row
                                    Row(
                                      children: [
                                        const Text(
                                          "City",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),

                                        ///space
                                        const Spacer(),

                                        ///City of coustomer
                                        SizedBox(
                                          width: queryWidth * 0.4,
                                          child: Text(
                                            textAlign: TextAlign.end,
                                            widget.city,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    ///space
                                    const Gap(8),

                                    ///row
                                    Row(
                                      children: [
                                        const Text(
                                          "State",
                                          style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),

                                        ///space
                                        const Spacer(),

                                        ///State of coustomer
                                        SizedBox(
                                          width: queryWidth * 0.4,
                                          child: Text(
                                            textAlign: TextAlign.end,
                                            widget.state,
                                            style: const TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    ///space
                                    const Gap(10),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          )

        ///mobile screen
        : Scaffold(
            appBar: AppBar(
              title: const Text(
                "Dealer Detail",
                style: TextStyle(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            body: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: queryWidth * 0.9,
                      decoration: BoxDecoration(
                        color: black3,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          ///space
                          const Gap(20),

                          ///name
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  "Name",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),

                                ///space
                                const Spacer(),

                                SizedBox(
                                  width: queryWidth*0.4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    widget.name,
                                    style: const TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///space
                          const Gap(8),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  "E-Mail",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),

                                ///space
                                const Spacer(),

                                SizedBox(
                                  width: queryWidth*0.4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    widget.email,
                                    style: const TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///space
                          const Gap(8),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  "Mobile No.",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),

                                ///space
                                const Spacer(),

                                SizedBox(
                                  width: queryWidth*0.3,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    widget.mobileNumber,
                                    style: const TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///space
                          const Gap(8),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  "City",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),

                                ///space
                                const Spacer(),

                                SizedBox(
                                  width: queryWidth*0.4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    widget.city,
                                    style: const TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          ///space
                          const Gap(8),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  "State",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),

                                ///space
                                const Spacer(),

                                SizedBox(
                                  width: queryWidth*0.4,
                                  child: Text(
                                    textAlign: TextAlign.end,
                                    widget.state,
                                    style: const TextStyle(
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                          ///space
                          const Gap(8),

                          edgeButton(
                            text: "  Block Coustomer  ",
                            backgroundColor: red2,
                            onPressed: (){
                              //todo
                            },
                          ),

                          ///space
                          const Gap(20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
