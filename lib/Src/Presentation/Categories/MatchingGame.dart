import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:dictionaryapp/Src/Utils/Widgets.dart';
import 'package:flutter/material.dart';

class MatchingGameScreen extends StatefulWidget {
  const MatchingGameScreen({
    super.key,
  });

  @override
  State<MatchingGameScreen> createState() => _MatchingGameScreenState();
}

class _MatchingGameScreenState extends State<MatchingGameScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.alphabetcontainercolor,
        body: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.black, width: 2.0)),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 34,
                          color: AppColors.white,
                        )),
                    const TextWithStroke(
                      text: 'Matching Game',
                      textStyle: TextStyle(
                          fontFamily: "coiny",
                          color: AppColors.white,
                          fontSize: 35),
                      strokeWidth: 5.0,
                      strokeColor: Colors.black,
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(AppImages.gifimg),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int i = 0; i < 3; i++) ...[
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 14),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                i == 0
                                    ? "Sing"
                                    : i == 1
                                        ? "Age"
                                        : "Beard",
                                style: const TextStyle(
                                    fontFamily: "montserrat",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white,
                                    fontSize: 20),
                              ),
                            ),
                          ]
                        ],
                      ),
                      const SizedBox()
                    ],
                  ),
                ),
                const Spacer()
              ],
            )));
  }
}
