import 'package:dictionaryapp/Src/Presentation/LoginPage.dart';
import 'package:dictionaryapp/Src/Presentation/SignupPage.dart';
import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:dictionaryapp/Src/Utils/Widgets.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primarycolor,
        body: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColors.black, width: 2.0)),
          height: double.infinity,
          child: Column(
            children: [
              Image.asset(
                AppImages.hearzeroimg,
                filterQuality: FilterQuality.high,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Spacer(),
                        Image.asset(AppImages.antiimg),
                      ],
                    ),
                    Column(
                      children: [
                        const TextWithStroke(
                            text: "Welcome To Our",
                            textStyle: TextStyle(
                                fontSize: 36, color: AppColors.textcolor),
                            strokeWidth: 2.0,
                            strokeColor: AppColors.black),
                        const TextWithStroke(
                            text: "Sign Too! App",
                            textStyle: TextStyle(
                                fontSize: 49, color: AppColors.textcolor),
                            strokeWidth: 2.0,
                            strokeColor: AppColors.black),
                        const Text(
                          "One Word. One Sign. One Connection",
                          style: TextStyle(
                              fontFamily: "montserrat",
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            MyButton(
                              bordercolor: AppColors.buttoncolor,
                              buttoncolor: AppColors.primarycolor,
                              buttontext: 'Sign Up',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupPage()));
                              },
                              textStyle: const TextStyle(
                                  fontSize: 19,
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                            MyButton(
                              bordercolor: AppColors.buttoncolor,
                              buttoncolor: AppColors.buttoncolor,
                              buttontext: ' Log in ',
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              },
                              textStyle: const TextStyle(
                                  fontSize: 19,
                                  color: AppColors.white,
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          "Terms of Service and Privacy Policy links",
                          style: TextStyle(
                              fontFamily: "montserrat",
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                      ],
                    ),
                    Column(
                      children: [
                        const Spacer(),
                        Image.asset(AppImages.uncleimg),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
