import 'dart:io';
import 'package:flutter/material.dart';
import 'package:korbi_admin/screens/dashboard_screen/dashboard_screen.dart';
import '../../constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String imagePath = "";
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      if(!mounted) return;
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context)=> DashboardScreen(image: File(imagePath))),
      );
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    queryWidth = MediaQuery.of(context).size.width;
    queryHeight = MediaQuery.of(context).size.height;
    return const Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage(
              "https://ik.imagekit.io/ycenqw53q/korbi.png?updatedAt=1731312726959",
          ),
        ),
      ),
    );
  }
}
