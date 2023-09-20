import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:dictionaryapp/Src/Utils/Widgets.dart';
import 'package:flutter/material.dart';

class IndustrydetailScreen extends StatefulWidget {
  const IndustrydetailScreen({
    super.key,
  });

  @override
  State<IndustrydetailScreen> createState() => _IndustrydetailScreenState();
}

class _IndustrydetailScreenState extends State<IndustrydetailScreen> {
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
                      text: 'Industry Sign',
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Image and Text widget
                    ImageAndTextWidget(
                      imagePath:
                          AppImages.antiimg, // Replace with your image path
                      text: 'Left Text',
                    ),

                    // Space
                    SizedBox(
                        width: 20.0), // You can adjust the spacing as needed

                    // Text and Image widget
                    TextAndImageWidget(
                      text: 'Right Text',
                      imagePath:
                          AppImages.uncleimg, // Replace with your image path
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Image and Text widget
                    ImageAndTextWidget(
                      imagePath:
                          AppImages.antiimg, // Replace with your image path
                      text: 'Left Text',
                    ),

                    // Space
                    SizedBox(
                        width: 20.0), // You can adjust the spacing as needed

                    // Text and Image widget
                    TextAndImageWidget(
                      text: 'Right Text',
                      imagePath:
                          AppImages.uncleimg, // Replace with your image path
                    ),
                  ],
                ),
                const Spacer()
              ],
            )));
  }
}
