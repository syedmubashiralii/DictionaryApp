import 'package:dictionaryapp/Src/Presentation/Resetpassword.dart';
import 'package:flutter/material.dart';

import '../Utils/Constants.dart';
import '../Utils/Widgets.dart';
import 'SignupPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.primarycolor,
        body: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.black, width: 2.0)),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                const TextWithStroke(
                    text: "Log in",
                    textStyle:
                        TextStyle(fontSize: 54, color: AppColors.textcolor),
                    strokeWidth: 2.0,
                    strokeColor: AppColors.black),
                const Text(
                  "Log in to your account",
                  style: TextStyle(
                      fontFamily: "montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
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
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  width: width * 0.25,
                                  child: Mytextfield(
                                    hinttext: "Email",
                                    controler: emailcontroller,
                                  )),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              SizedBox(
                                  width: width * 0.25,
                                  child: MypasswordTextfield(
                                    controller: passwordcontroller,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: width * 0.52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Resetpasswordpage()));
                                  },
                                  child: const Text(
                                    "Forget password?",
                                    style: TextStyle(
                                        fontFamily: "montserrat",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: width * 0.52,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  AppColors
                                      .buttoncolor, // Change this color to the desired one
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Log in",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: "montserrat",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignupPage()));
                            },
                            child: const Text(
                              "Don't have an account? Sign Up",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
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
            )));
  }
}
