import 'package:dictionaryapp/Src/Presentation/Categories/AlphabetSignCategory.dart';
import 'package:dictionaryapp/Src/Presentation/UserProgressTracking.dart';
import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:flutter/material.dart';

class LearningGameScreen extends StatefulWidget {
  const LearningGameScreen({super.key});

  @override
  State<LearningGameScreen> createState() => _LearningGameScreenState();
}

class _LearningGameScreenState extends State<LearningGameScreen> {
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
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Learning Game",
                                style: TextStyle(
                                    fontFamily: "coiny",
                                    fontSize: 35,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.0),
                                child: Text(
                                  "Current Score 0",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      color: AppColors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              )
                            ],
                          ),
                          Divider(
                            thickness: 2,
                            color: AppColors.white,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const UserProgressTracking()));
                        },
                        child: Image.asset(AppImages.personimg)),
                    const SizedBox(
                      width: 30,
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    "Tap to reveal the sign & alphabet",
                    style: TextStyle(
                        fontFamily: "coiny",
                        fontSize: 24,
                        color: AppColors.textcolor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 9; i++) ...[
                        AlphabetWidget(
                          containercolor: AppColors.textcolor,
                          alphabet: "",
                          ontap: () {},
                        )
                      ]
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 9; i < 18; i++) ...[
                        AlphabetWidget(
                          containercolor: AppColors.textcolor,
                          alphabet: "",
                          ontap: () {},
                        )
                      ]
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 60.0,
                  ),
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
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Level 1",
                              style: TextStyle(
                                  fontFamily: "montserrat",
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.white,
                                  fontSize: 18),
                            ),
                            Row(
                              children: [
                                for (int i = 0; i < 6; i++) ...[
                                  Container(
                                    width: 45,
                                    margin: const EdgeInsets.only(right: 4),
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: i == 0
                                            ? AppColors.textcolor
                                            : AppColors.textcolor
                                                .withOpacity(.5),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  )
                                ]
                              ],
                            ),
                          ]),
                      Row(
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
                                Icons.help,
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
                                  vertical: 6.0, horizontal: 8),
                              child: Icon(
                                Icons.settings,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
              ]),
        ),
      ),
    );
  }
}
