import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mess_xp_app_project/modules/dashboard/dashboard_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardLayer {


  static topLayer({SizingInformation? sizingInformation}) {
    return Column(
      children: [
        const Text(
          "Meal Rate",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        Stack(
          fit: StackFit.passthrough,
          //alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: Column(
                children: const [
                  Text("Last Month",
                      style: TextStyle(color: Colors.grey, fontSize: 10)),
                  Text(" 76556",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                ],
              ),
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 5,
                    color: const Color.fromARGB(150, 242, 201, 76),
                    style: BorderStyle.solid),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    width: 10,
                    color: const Color.fromARGB(150, 242, 201, 76),
                    style: BorderStyle.solid),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SvgPicture.asset('assets/mdi-currency-bdt.svg'),
                  const Text(
                    "48.00",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  static midLayer({SizingInformation? sizingInformation}) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 200,
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            elevation: 5,
            shadowColor: Colors.tealAccent,
            child: Row(
              children: [
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.yellowAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '10\nTotal Members',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.blueAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '17\n Total Meals',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.redAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '10\n Total Members',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      width: 190,
                      height: 80,
                      child: Card(
                        shadowColor: Colors.deepPurpleAccent,
                        elevation: 10,
                        child: Center(
                          child: Text(
                            '17\n Total Meals',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 500,
          height: 80,
          child: Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Text(
                "Upcoming events",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                width: 130,
              ),
              Text(
                "view all",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static bottomLayer(
      {SizingInformation? sizingInformation, PageController? controller, tabData, DashboardLogic? dashboardLogic}) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: tabData.length,
              itemBuilder: (context, index) {
                return Obx(() {
                  return InkWell(
                    onTap: () {
                      print(index);
                      dashboardLogic?.selectedIndex.value = index;
                      controller?.animateToPage(index, curve: Curves.easeIn,
                          duration: Duration(milliseconds: 200));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(tabData[index]),
                          Container(
                            height: 10,
                            width: 60,
                            color: dashboardLogic?.selectedIndex.value == index
                                ? Colors.yellow
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
            ),
          ),

          Expanded(
            child: PageView(
              controller: controller,
              children: dashboardLogic?.pageList as List<Widget>,
            ),
          )
        ],
      ),
    );
  }
}
