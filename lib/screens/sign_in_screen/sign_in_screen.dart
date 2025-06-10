import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/constants.dart';
import 'package:korbi_admin/screens/dashboard_screen/dashboard_screen.dart';
import '../../widgets/edge_button.dart';
import '../../widgets/textField.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _buttonActive = false;
  String imagePath = "";
  void pp(){}
  void _save() {
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
                'Loading...',
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
      Navigator.of(
          context, rootNavigator: true).pop();

      ///navigate to next screen
      if ( passwordController.text.isNotEmpty
      ) {
        Navigator.push(
            context, MaterialPageRoute(builder: (index)=>  DashboardScreen(image:  File(imagePath),)));
        // action
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: red3,
            content: Text(
              'Login Successful',
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
              'Invalid Details',
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ///space
              //Gap(5),
          
              ///logo
              const SizedBox(
                child: Image(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://ik.imagekit.io/ycenqw53q/Frame%201.png?updatedAt=1731142212896"
                  ),
                ),
              ),
          
              ///heading
              const Text(
                "Welcome Back",
                style: TextStyle(
                  color: black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
          
              ///space
              const Gap(10),
          
              ///heading
              const SizedBox(
                width: 500,
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  widthFactor: 30,
                  child: Text(
                    textAlign: TextAlign.start,
                    "Email",
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),


              ///email textfield
              SizedBox(
                width: 500,
                child: textField(
                  hintText: "Enter your Email address",
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: black,
                    size: 20,
                  ),
                  onChanged: (value){
                   setState(() {
                     _buttonActive = emailController.text.isNotEmpty ? true : false;
                   });
                  }
                ),
              ),

              ///space
              const Gap(10),

              ///heading
              const SizedBox(
                width: 500,
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  widthFactor: 19,
                  child: Text(
                    textAlign: TextAlign.start,
                    "Password",
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
          
              ///password textfield
              SizedBox(
                width: 500,
                child: textField(
                  hintText: "Enter your Password",
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword ,
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: black,
                    size: 20,
                  ),
                  onChanged: (value){
                   setState(() {
                     _buttonActive = passwordController.text.isNotEmpty ? true : false;
                   });
                  }
                ),
              ),
              
              ///space
              const Gap(50),
              
              ///button
             edgeButton(
               text: "Login",
               backgroundColor: greyDark,
               disabledBackgroundColor: black,
               onPressed:  _buttonActive == true ? _save : null,
             ),
            ],
          ),
        ),
      ),
    );
  }
}
