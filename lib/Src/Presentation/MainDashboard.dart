import 'package:dictionaryapp/Src/Presentation/Categories/AlphabetSignCategory.dart';
import 'package:dictionaryapp/Src/Presentation/Categories/FamilyDetailScreen.dart';
import 'package:dictionaryapp/Src/Presentation/Categories/industryDetailScreen.dart';
import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:dictionaryapp/Src/Utils/Widgets.dart';
import 'package:flutter/material.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  TextEditingController searchsignscontroller = TextEditingController();
  FocusNode f = FocusNode();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 40),
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(AppImages.maindashboardimg))),
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
                SizedBox(
                    width: width * 0.45,
                    child: Mytextfield(
                      f: f,
                      hinttext: "Search Signs",
                      controler: searchsignscontroller,
                      bordercolor: AppColors.buttoncolor,
                      suffixicon: const Icon(Icons.search),
                    )),
              ],
            ),
            Text(
              "Categories",
              style: TextStyle(
                  fontFamily: "coiny",
                  fontSize: 40,
                  color: AppColors.apporangecolor.withOpacity(.8),
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categorywidget(
                  categoryimg: AppImages.alphabetcategoryimg,
                  categoryname: "Alphabet",
                  ontap: () {
                    f.unfocus();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AlphabetSignCategory()));
                  },
                ),
                categorywidget(
                  categoryimg: AppImages.familysigncategoryimg,
                  categoryname: "Family signs",
                  ontap: () {
                    f.unfocus();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FamilydetailScreen()));
                  },
                ),
                categorywidget(
                  categoryimg: AppImages.industrysigncategoryimg,
                  categoryname: "Industry signs",
                  ontap: () {
                    f.unfocus();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const IndustrydetailScreen()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
