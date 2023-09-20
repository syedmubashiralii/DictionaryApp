import 'package:dictionaryapp/Src/Presentation/Categories/AlphabetDetailsScreen.dart';
import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:dictionaryapp/Src/Utils/Widgets.dart';
import 'package:flutter/material.dart';

class AlphabetSignCategory extends StatefulWidget {
  const AlphabetSignCategory({super.key});

  @override
  State<AlphabetSignCategory> createState() => _AlphabetSignCategoryState();
}

class _AlphabetSignCategoryState extends State<AlphabetSignCategory> {
  final List<String> alphabets = List.generate(
      26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.maindashboardimg))),
            child: Container(
              padding: const EdgeInsets.only(left: 40, top: 12, right: 40),
              color: const Color(0xffE9CB37).withOpacity(.6),
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
                        text: 'Alphabet Signs',
                        textStyle: TextStyle(
                            fontFamily: "coiny",
                            color: AppColors.white,
                            fontSize: 35),
                        strokeWidth: 5.0,
                        strokeColor: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 9; i++) ...[
                        AlphabetWidget(
                          alphabet: alphabets[i],
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlphabetdetailScreen(
                                          signtext: alphabets[i],
                                        )));
                          },
                        )
                      ]
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 9; i < 18; i++) ...[
                        AlphabetWidget(
                          alphabet: alphabets[i],
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AlphabetdetailScreen(
                                          signtext: alphabets[i],
                                        )));
                          },
                        )
                      ]
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: width * .85,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (int i = 18; i < 26; i++) ...[
                          AlphabetWidget(
                            alphabet: alphabets[i],
                            ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AlphabetdetailScreen(
                                            signtext: alphabets[i],
                                          )));
                            },
                          )
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

class AlphabetWidget extends StatelessWidget {
  final String alphabet;
  final VoidCallback ontap;
  const AlphabetWidget({
    required this.alphabet,
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 65,
        height: 65,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.alphabetcontainercolor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.white, width: 3)),
        child: TextWithStroke(
          text: alphabet,
          textStyle: const TextStyle(
              fontFamily: "montserrat",
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 43),
          strokeWidth: 5.0,
          strokeColor: Colors.white,
        ),
      ),
    );
  }
}
