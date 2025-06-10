import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:korbi_admin/screens/dashboard_screen/dashboard_screen.dart';
import 'package:korbi_admin/widgets/edge_button.dart';
import 'package:korbi_admin/widgets/new_textfield.dart';
import '../../constants.dart';
import '../../responsive_class.dart';
import '../../widgets/round_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String imagePath = "";
  Uint8List? image;
  final ImagePicker imagePicker = ImagePicker();

  getImager() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      final imageBytes = await pickedImage.readAsBytes();
      image = imageBytes;

      setState(() {
        imagePath = pickedImage.path;
      });
    }
  }

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
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://ik.imagekit.io/ycenqw53q/korbi.png?updatedAt=1731312726959"),
                  ),
                ),
              ),
              title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (index) => DashboardScreen(
                                image: File(imagePath),
                              )));
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
                  onPressed: () {
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
                  onPressed: () {
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
                  onTap: () {
                    //todo
                  },
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundColor: greyDark,
                  ),
                ),

                ///space
                const Gap(10),
              ],
            ),
            body: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///space
                    const Gap(30),

                    const Row(
                      children: [
                        ///heading
                        Text(
                          "Account",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    const Row(
                      children: [
                        ///sub heading
                        Text(
                          "Real-time information and activity of your Property",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    ///space
                    const Gap(30),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundColor: black6,
                          backgroundImage: FileImage(
                            File(imagePath),
                          ),
                        ),

                        ///space
                        const Gap(30),

                        Column(
                          children: [
                            const Text(
                              "Profile Picture",
                              style: TextStyle(
                                color: black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Text(
                              "PNG, JPG under 15MB",
                              style: TextStyle(
                                color: greyDark,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            const Gap(10),

                            ///buttons
                            Row(
                              children: [
                                ///space
                                const Gap(50),

                                ///button
                                edgeButton(
                                    text: "Upload new picture",
                                    backgroundColor: greyDark,
                                    disabledBackgroundColor: greyDark,
                                    onPressed: () {
                                      //todo
                                      getImager();
                                    }),
                                edgeButton(
                                    text: "Delete",
                                    backgroundColor: red2,
                                    disabledBackgroundColor: red2,
                                    onPressed: () {
                                      //todo
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    ///space
                    const Gap(20),

                    const Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: Text(
                            "First Name",
                            style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        ///space
                        Gap(20),

                        SizedBox(
                          width: 300,
                          child: Text(
                            "Last Name",
                            style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: newTextField(hintText: "First Name"),
                        ),

                        ///space
                        const Gap(20),

                        SizedBox(
                          width: 300,
                          child: newTextField(hintText: "Last Name"),
                        ),
                      ],
                    ),

                    ///space
                    const Gap(20),

                    const Row(
                      children: [
                        ///heading
                        Text(
                          "Contact email",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    const Row(
                      children: [
                        ///sub heading
                        Text(
                          "Manage your accounts email address for the invoices",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    ///space
                    const Gap(10),

                    const Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: Text(
                            "E-Mail ID",
                            style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: newTextField(
                            hintText: "james656@gmail.com",
                          ),
                        ),
                      ],
                    ),

                    ///space
                    const Gap(10),

                    Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: newTextField(
                            hintText: "Add another Email",
                            prefixIcon: const Icon(
                              Icons.add_circle_outline_rounded,
                              size: 20,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ///save button
                        edgeButton(
                            text: "Save",
                            backgroundColor: greyDark,
                            disabledBackgroundColor: greyDark,
                            onPressed: () {
                              //todo
                            }),

                        ///space
                        const Gap(5),

                        ///change password button
                        edgeButton(
                            text: "Change Password",
                            backgroundColor: greyDark,
                            disabledBackgroundColor: greyDark,
                            onPressed: () {
                              //todo
                            }),

                        ///space
                        const Gap(5),

                        ///delete account button
                        edgeButton(
                            text: "Delete Account",
                            backgroundColor: red2,
                            disabledBackgroundColor: red2,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: black,
                                      title: const Center(
                                        child: Text(
                                          "Are you sure you want to Delete Account?",
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
                                                backgroundColor: greyDark,
                                                disabledBackgroundColor: black5,
                                                onPressed: () {
                                                  //todo
                                                }),
                                            roundButton(
                                                text: "Delete",
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
                      ],
                    ),

                    ///space
                    const Gap(20),
                  ],
                ),
              ),
            ),
          )

        ///mobile screen
        : Scaffold(
            appBar: AppBar(
              backgroundColor: black3,
              automaticallyImplyLeading: false,
              leadingWidth: 100,
              toolbarHeight: 60,
              leading: const Center(
                child: SizedBox(
                  width: 100,
                  height: 60,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://ik.imagekit.io/ycenqw53q/korbi.png?updatedAt=1731312726959"),
                  ),
                ),
              ),
              title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (index) => DashboardScreen(
                                image: File(imagePath),
                              )));
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

                ///notifications button
                IconButton(
                  onPressed: () {
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
                  onTap: () {
                    //todo
                  },
                  child: const CircleAvatar(
                    radius: 22,
                    backgroundColor: greyDark,
                  ),
                ),

                ///space
                const Gap(10),
              ],
            ),
            body: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ///space
                    const Gap(10),

                    Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: black6,
                          backgroundImage: FileImage(
                            File(imagePath),
                          ),
                        ),

                        Column(
                          children: [
                            const Text(
                              "Profile Picture",
                              style: TextStyle(
                                color: black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Text(
                              "PNG, JPG under 15MB",
                              style: TextStyle(
                                color: greyDark,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            const Gap(10),

                            ///buttons
                            const Gap(20),

                            ///button
                            edgeButton(
                                text: "Upload new picture",
                                backgroundColor: greyDark,
                                disabledBackgroundColor: greyDark,
                                onPressed: () {
                                  //todo
                                  getImager();
                                }),
                          ],
                        ),
                      ],
                    ),

                    ///space
                    const Gap(20),

                    SizedBox(
                      width:queryWidth*0.9,
                      child: const Text(
                        "First Name",
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),


                    SizedBox(
                      width:queryWidth*0.9,
                      child: newTextField(
                          hintText: "First Name"),
                    ),

                    ///space
                    const Gap(20),

                    SizedBox(
                      width: queryWidth*0.9,
                      child: const Text(
                        "Last Name",
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(
                      width:queryWidth*0.9,
                      child: newTextField(
                          hintText: "Last Name"),
                    ),

                    ///space
                    const Gap(20),

                    const Row(
                      children: [
                        ///heading
                        Text(
                          "Contact email",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    const Row(
                      children: [
                        ///sub heading
                        Text(
                          "Manage your accounts email address for the invoices",
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    ///space
                    const Gap(10),

                    const Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: Text(
                            "E-Mail ID",
                            style: TextStyle(
                              color: black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: newTextField(
                            hintText: "james656@gmail.com",
                          ),
                        ),
                      ],
                    ),

                    ///space
                    const Gap(10),

                    Row(
                      children: [
                        SizedBox(
                          width: 300,
                          child: newTextField(
                            hintText: "Add another Email",
                            prefixIcon: const Icon(
                              Icons.add_circle_outline_rounded,
                              size: 20,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),

                    ///space
                    const Gap(10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ///save button
                        edgeButton(
                            text: "Save",
                            backgroundColor: red2,
                            disabledBackgroundColor: red2,
                            onPressed: () {
                              //todo
                            }),

                        ///space
                        const Gap(5),

                        ///change password button
                        edgeButton(
                            text: "Change Password",
                            backgroundColor: red2,
                            disabledBackgroundColor: red2,
                            onPressed: () {
                              //todo
                            }),
                      ],
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
