import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AppImages.maindashboardimg))),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.buttoncolor.withOpacity(.8),
          padding: const EdgeInsets.only(left: 40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.hearzerobadgeimg),
                    const SizedBox(
                      width: 30,
                    ),
                    const Expanded(
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontFamily: "coiny",
                            fontSize: 31,
                            color: AppColors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(AppImages.personimg),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "@HammadUI123",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              "Level 1",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 12),
                            ),
                            Text(
                              "Current Score 2",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SizedBox(
                    width: width * .4,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "User Prefences",
                          style: TextStyle(
                              fontFamily: "montserrat",
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Language",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 12),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.white,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Notifications",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 12),
                            ),
                            Icon(
                              Icons.toggle_on_outlined,
                              color: AppColors.white,
                            )
                          ],
                        ),
                        Divider(
                          color: AppColors.white,
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Profile Settings",
                          style: TextStyle(
                              fontFamily: "montserrat",
                              fontWeight: FontWeight.w700,
                              color: AppColors.white,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Profile Information",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 12),
                            ),
                            SizedBox()
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 12),
                            ),
                            SizedBox()
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Privacy Settings",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 12),
                            ),
                            Icon(
                              Icons.toggle_on_outlined,
                              color: AppColors.white,
                            )
                          ],
                        ),
                        Divider(
                          color: AppColors.white,
                          thickness: 2,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 80.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                          color: AppColors.textcolor,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: AppColors.white,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 8),
                          child: Icon(
                            Icons.exit_to_app,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30),
                        decoration: BoxDecoration(
                          color: AppColors.textcolor,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: AppColors.white,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                fontFamily: "montserrat",
                                fontWeight: FontWeight.w700,
                                color: AppColors.white,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
