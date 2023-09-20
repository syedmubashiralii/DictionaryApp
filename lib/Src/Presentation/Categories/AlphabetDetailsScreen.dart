import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:dictionaryapp/Src/Utils/Widgets.dart';
import 'package:flutter/material.dart';

class AlphabetdetailScreen extends StatefulWidget {
  String signtext;
  AlphabetdetailScreen({super.key, required this.signtext});

  @override
  State<AlphabetdetailScreen> createState() => _AlphabetdetailScreenState();
}

class _AlphabetdetailScreenState extends State<AlphabetdetailScreen> {
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
                    TextWithStroke(
                      text: 'Alphabet ${widget.signtext} Sign',
                      textStyle: const TextStyle(
                          fontFamily: "coiny",
                          color: AppColors.white,
                          fontSize: 35),
                      strokeWidth: 50.0,
                      strokeColor: Colors.black,
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppImages.uncleimg),
                    TextWithStroke(
                      text: widget.signtext,
                      textStyle: const TextStyle(
                          fontFamily: "coiny",
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontSize: 100),
                      strokeWidth: 50.0,
                      strokeColor: Colors.black,
                    ),
                    Image.asset(AppImages.antiimg),
                  ],
                ),
                const Spacer()
              ],
            )));
  }
}
