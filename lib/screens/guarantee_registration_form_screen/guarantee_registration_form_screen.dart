import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/widgets/new_textfield.dart';
import 'package:korbi_admin/widgets/qr_code_tile.dart';
import 'package:korbi_admin/widgets/round_button.dart';
import 'package:korbi_admin/widgets/textField.dart';
import '../../constants.dart';
import '../../widgets/edge_button.dart';

class GuaranteeRegistrationFormScreen extends StatefulWidget {
  const GuaranteeRegistrationFormScreen({super.key});

  @override
  State<GuaranteeRegistrationFormScreen> createState() => _GuaranteeRegistrationFormScreenState();
}

class _GuaranteeRegistrationFormScreenState extends State<GuaranteeRegistrationFormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  bool isButtonActive = false;
  bool isRegistered = false;
  void isVerified(){
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: false,
        child: AlertDialog(
          backgroundColor: red2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
          content: const Row(
            children: [
              //circular loading
              CircularProgressIndicator(
                color: white,
              ),

              //space
              SizedBox(
                width: 20,
              ),

              //loading text
              Text(
                'Verifying...',
                style: TextStyle(
                  color: white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    Future.delayed(const Duration(seconds: 1), () {
      if(!mounted) return;
      Navigator.of(
          context, rootNavigator: true).pop();

      ///navigate to next screen
      if ( phoneController.text.isNotEmpty
      ) {
        // action
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "Otp sent Successfully",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          //snackBar
          const SnackBar(
            backgroundColor: red2,
            content: Text(
              'Invalid Details',
            ),
          ),
        );
      }
    });
  }
  void isResend(){
    showDialog<String>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: false,
        child: AlertDialog(
          backgroundColor: red2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
          content: const Row(
            children: [
              //circular loading
              CircularProgressIndicator(
                color: white,
              ),

              //space
              SizedBox(
                width: 20,
              ),

              //loading text
              Text(
                "Resending...",
                style: TextStyle(
                  color: white,
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
      if ( phoneController.text.isNotEmpty
      ) {
        // action
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text(
              "Otp sent Successfully",
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          //snackBar
          const SnackBar(
            backgroundColor: red2,
            content: Text(
              "Please Try Again Later",
            ),
          ),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            ///space
            const Gap(20),

            ///grey box
            Container(
              width: queryWidth*0.9,
              height: queryHeight*0.9,
              decoration: BoxDecoration(
                color: black2,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///heading
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        "Guarantee Registration From",
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  ///space
                  const Gap(10),

                  ///Qr Code
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: qrCodeTile(
                      productId: "64654644",
                      text: "Generate QR Code",
                    ),
                  ),

                  ///space
                  const Gap(10),

                  ///card registering details
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: queryWidth*0.7,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadiusDirectional.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Generate Card Registering",
                              style: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            ///space
                            const Gap(10),

                            ///textfield
                            const Text(
                              "Consumer Name",
                              style: TextStyle(
                                color: black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            SizedBox(
                              width: 300,
                              child: textField(
                                hintText: "Full Name",
                                keyboardType: TextInputType.phone,
                                controller: nameController,
                                onChanged: (value){
                                  isButtonActive = nameController.text.isNotEmpty ? true : false;
                                },
                              ),
                            ),

                            ///space
                            const Gap(5),

                            ///textfield
                            const Text(
                              "Mobile Number",
                              style: TextStyle(
                                color: black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            SizedBox(
                              width: 300,
                              child: textField(
                                hintText: "+91 **********",
                                keyboardType: TextInputType.phone,
                                controller: phoneController,
                                onChanged: (value){
                                  isButtonActive = phoneController.text.isNotEmpty ? true : false;
                                },
                              ),
                            ),

                            ///verification button
                            roundButton(
                              text: "Verify",
                              backgroundColor: red2,
                              disabledBackgroundColor: black5,
                              onPressed: (){
                                isButtonActive == true ? isVerified() : null;
                              }
                            ),

                            ///space
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Didn't Recieve Otp?",
                                  style: TextStyle(
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    isResend();
                                  },
                                  child:  const Text(
                                  "resend Code",
                                  style: TextStyle(
                                    color: red2,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                ),
                              ],
                            ),

                            ///textfield
                            const Text(
                              "Enter Otp",
                              style: TextStyle(
                                color: black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            ///otp textfield
                            Row(
                              children: [
                                SizedBox(
                                  width: 300,
                                  child: newTextField(
                                    maxLength: 6,
                                    hintText: "******",
                                    controller: otpController,
                                    keyboardType: TextInputType.number,
                                    onChanged: (value){
                                      setState(() {
                                        isRegistered = value.length==6 ? true:false;
                                      });
                                    },
                                  ),
                                ),

                                ///space
                                const Gap(30),

                                ///status
                                Visibility(
                                  visible: isRegistered,
                                  child: const Text(
                                    "Product Registered Successfully!!!",
                                    style: TextStyle(
                                      color:CupertinoColors.activeGreen,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
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

                  ///space
                  const Gap(5),

                  ///issue button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      edgeButton(
                        text: "Back",
                        backgroundColor: greyDark,
                        disabledBackgroundColor: black,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),

                      edgeButton(
                        text: "Continue",
                        backgroundColor: greyDark,
                        disabledBackgroundColor: black,
                        onPressed: () {
                          //todo
                        },
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
