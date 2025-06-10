import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:korbi_admin/constants.dart';
import 'package:korbi_admin/modals/dashboard_modal.dart';
import 'package:korbi_admin/screens/consumer_registration_details/consumer_registration_details_screen.dart';
import 'package:korbi_admin/screens/dealers_screen/dealers_screen.dart';
import 'package:korbi_admin/screens/product_id_creation/product_id_creation_screen.dart';
import 'package:korbi_admin/screens/profile_screen/profile_screen.dart';
import 'package:korbi_admin/screens/total_coustomer_screen/total_coustomer_screen.dart';
import 'package:korbi_admin/screens/website_visitors_screens/website_visitors_screen.dart';
import 'package:korbi_admin/widgets/dashboard_button.dart';
import '../../responsive_class.dart';
import '../product_id_list_screen/product_id_list_screen.dart';


List<DashboardModal> dashboardList = [
  DashboardModal(
    text: "Total Customers",
    numbers: "1256",
  ),
  DashboardModal(
    text: "Website Visitors",
    numbers: "",
  ),
  DashboardModal(
    text: "Dealers",
    numbers: "456",
  ),
  DashboardModal(
    text: "Product ID Creation",
    numbers: "",
  ),
  DashboardModal(
    text: "Product Details",
    numbers: "",
  ),
];

class DashboardScreen extends StatefulWidget {
  final File image;

  const DashboardScreen({
    super.key,
    required this.image,
  });

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)
        ? Scaffold(
      appBar: AppBar(
        backgroundColor: black3,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        toolbarHeight: 60,
        leading: const Center(
          child: SizedBox(
            width: 100,
            height: 60,
            child:  Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://ik.imagekit.io/ycenqw53q/korbi.png?updatedAt=1731312726959"
              ),
            ),
          ),
        ),

        title: ElevatedButton(
          onPressed: (){
            //todo
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: red3,
          ),
          child: const Text(
            "DashBoard",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),

        actions: [
          ///space
          const Gap(5),

          ///search button
          IconButton(
            onPressed: (){
              //todo
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
          const Gap(5),
        ///notifications button
        IconButton(
        onPressed: (){
             //todo
              },
            highlightColor: black4,
            hoverColor: black,
            constraints: const BoxConstraints(),
            style: ElevatedButton.styleFrom(
              backgroundColor: greyDark,
            ),
              icon: const Icon(
                  Icons.notifications_none_outlined,
                size: 25,
                color: white,
              ),
        ),

          ///space
          const Gap(5),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (index)=> const ProfileScreen()));
            },
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: black,
            ),
          ),

          ///space
          const Gap(10),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: queryWidth*0.9,
                height: queryHeight*0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: black3,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Wrap(
                        children:[
                          ///total customers
                          dashBoardButton(
                            text: "Total Customers",
                            numbers: "1246",
                            onTap: (){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (index)=> const TotalCoustomerScreen()));
                            }
                          ),

                          ///website visitors
                          dashBoardButton(
                              text: "Website Visitors",
                              numbers: "201",
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (index)=> const WebsiteVisitorsScreen()));
                              }
                          ),

                          ///Dealers
                          dashBoardButton(
                              text: "Dealers",
                              numbers: "304",
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (index)=> const DealersScreen()));
                              }
                          ),

                          ///Product id
                          dashBoardButton(
                              text: "Product Details",
                              numbers: "",
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (index)=> const ProductIdListScreen()));
                              }
                          ),

                          ///Product details
                          dashBoardButton(
                              text: "Product Id Creation",
                              numbers: "",
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (index)=> const ProductIdCreationScreen()));
                              }
                          ),

                          ///consumer registration details
                          dashBoardButton(
                              text: "Consumer Registration Details",
                              numbers: "",
                              onTap: (){
                                Navigator.push(
                                    context, MaterialPageRoute(builder: (index)=> const ConsumerRegistrationDetailsScreen()));
                              }
                          ),
                        ]
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    )
    :Scaffold(
      appBar: AppBar(
        backgroundColor: black3,
        automaticallyImplyLeading: false,
        leadingWidth: 80,
        titleSpacing: 10,
        toolbarHeight: 60,
        leading:  const Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
            child: SizedBox(
              height: 60,
              width: 80,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://ik.imagekit.io/ycenqw53q/korbi.png?updatedAt=1731312726959"
                ),
              ),
            ),
          ),
        ),

        title: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: red3,
          ),
          child: const Text(
            "DashBoard",
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ),

        actions: [
          ///space
          const Gap(5),

          ///search button
          IconButton(
            onPressed: (){
              //todo
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
          const Gap(5),
          ///notifications button
          IconButton(
            onPressed: (){
              //todo
            },
            highlightColor: black4,
            hoverColor: black,
            constraints: const BoxConstraints(),
            style: ElevatedButton.styleFrom(
              backgroundColor: greyDark,
            ),
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 20,
              color: white,
            ),
          ),

          ///space
          const Gap(5),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (index)=> const ProfileScreen()));
            },
            child: const CircleAvatar(
              radius: 22,
              backgroundColor: black,
            ),
          ),

          ///space
          const Gap(5),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: queryWidth*0.9,
                height: queryHeight*0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: black3,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Wrap(
                          children:[
                            ///total customers
                            dashBoardButton(
                                text: "Total Customers",
                                numbers: "1246",
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (index)=> const TotalCoustomerScreen()));
                                }
                            ),

                            ///website visitors
                            dashBoardButton(
                                text: "Website Visitors",
                                numbers: "201",
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (index)=> const WebsiteVisitorsScreen()));
                                }
                            ),

                            ///Dealers
                            dashBoardButton(
                                text: "Dealers",
                                numbers: "304",
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (index)=> const DealersScreen()));
                                }
                            ),

                            ///Product id
                            dashBoardButton(
                                text: "Product Details",
                                numbers: "",
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (index)=> const ProductIdListScreen()));
                                }
                            ),

                            ///Product details
                            dashBoardButton(
                                text: "Product Id Creation",
                                numbers: "",
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (index)=> const ProductIdCreationScreen()));
                                }
                            ),

                            ///consumer registration details
                            dashBoardButton(
                                text: "Consumer Registration Details",
                                numbers: "",
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (index)=> const ConsumerRegistrationDetailsScreen()));
                                }
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
