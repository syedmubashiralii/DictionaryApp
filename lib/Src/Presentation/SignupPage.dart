import 'package:dictionaryapp/Src/Presentation/LoginPage.dart';
import 'package:flutter/material.dart';

import '../Utils/Constants.dart';
import '../Utils/Widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController fullnamecontroller = TextEditingController();
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
                    text: "Sign up",
                    textStyle:
                        TextStyle(fontSize: 54, color: AppColors.textcolor),
                    strokeWidth: 2.0,
                    strokeColor: AppColors.black),
                const Text(
                  "Create an account",
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
                                    hinttext: "Full Name",
                                    controler: fullnamecontroller,
                                  )),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              SizedBox(
                                  width: width * 0.25,
                                  child: Mytextfield(
                                    hinttext: "Email",
                                    controler: emailcontroller,
                                  )),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            width: width * 0.52,
                            child: MypasswordTextfield(
                              controller: passwordcontroller,
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
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: "montserrat",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: const Text(
                              "Already have an account? Log In",
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
