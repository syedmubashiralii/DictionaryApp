import 'package:dictionaryapp/Src/Presentation/UserProgressTracking.dart';
import 'package:dictionaryapp/Src/Utils/Constants.dart';
import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatefulWidget {
  const LeaderBoardScreen({super.key});

  @override
  State<LeaderBoardScreen> createState() => _LeaderBoardScreenState();
}

class _LeaderBoardScreenState extends State<LeaderBoardScreen> {
  List<String> leaders = [
    "John Bekam",
    "Joe root",
    "khalid",
    "Zeeshan ",
    "Mubashir",
    "David Bakham"
  ];
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
                                  "LeaderBoard",
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
                  Expanded(
                      child: ListView.builder(
                    itemCount: leaders.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 35),
                        decoration: BoxDecoration(
                            color: AppColors.textcolor,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 40,
                              ),
                              Text(
                                leaders[index],
                                style: const TextStyle(
                                    fontFamily: "montserrat",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white,
                                    fontSize: 18),
                              ),
                              const Spacer(),
                              const Text(
                                "Current Score 18",
                                style: TextStyle(
                                    fontFamily: "montserrat",
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                width: 40,
                              )
                            ],
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(AppImages.personimg),
                          ),
                        ),
                      );
                    },
                  ))
                ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(left: 30),
          decoration: BoxDecoration(
            color: AppColors.textcolor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: AppColors.white,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
            child: Icon(
              Icons.exit_to_app,
              size: 32,
              color: Colors.white,
            ),
          ),
        ));
  }
}
