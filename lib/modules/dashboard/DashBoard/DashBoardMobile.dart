import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mess_xp_app_project/modules/dashboard/widgets/layers.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../dashboard_logic.dart';

class DashboardPageMobilePortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;

  PageController pageController = PageController();

  var tabData = [
    "All",
    "Monthly feast",
  ];

  DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: ListView(
        children: [
          DashboardLayer.topLayer(sizingInformation: sizingInformation),
          DashboardLayer.midLayer(sizingInformation: sizingInformation),
          DashboardLayer.bottomLayer(sizingInformation: sizingInformation,controller: pageController,dashboardLogic: controller,tabData: tabData),
        ],
      ),
    );
  }
}


/*class DashboardPageMobilePortrait extends StatefulWidget {
  final SizingInformation? sizingInformation;
  DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  State<DashboardPageMobilePortrait> createState() => _DashboardPageMobilePortraitState();
}

class _DashboardPageMobilePortraitState extends State<DashboardPageMobilePortrait> {

  final PageController _pageController = PageController();

  int _buttomIndex = 0;

  var selectedIndex = 0;

  var tabData = [
    "All",
    "Monthly feast",
  ];

  List<Widget> pageList = [
    // Card(
    //   elevation: 5,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   shadowColor: Colors.blue,
    //   child: ListTile(
    //     leading: SvgPicture.asset('assets/full_pizzea.svg',height: double.infinity),
    //     title: const Text("30 Nov, 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w100,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.black38,
    //     ),),
    //     trailing: Container(
    //       width: 100,
    //       height: 30,
    //       child: Card(
    //         elevation: 5,
    //         shadowColor: Colors.greenAccent,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(50),
    //           side: const BorderSide(
    //             color: Colors.black,
    //           ),
    //         ),
    //         child: const Center(
    //           child: Text('Remind me',style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 14,
    //             fontWeight: FontWeight.w100,
    //           ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
    // Card(
    //   elevation: 5,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   shadowColor: Colors.blue,
    //   child: ListTile(
    //     leading: SvgPicture.asset('assets/full_pizzea.svg',height: double.infinity),
    //     title: const Text("30 Nov, 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w100,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     trailing: Container(
    //       width: 100,
    //       height: 30,
    //       child: Card(
    //         elevation: 5,
    //         shadowColor: Colors.greenAccent,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(50),
    //           side: const BorderSide(
    //             color: Colors.black,
    //           ),
    //         ),
    //         child: const Center(
    //           child: Text('Remind me',style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 14,
    //             fontWeight: FontWeight.w100,
    //           ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
    // Card(
    //   elevation: 5,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   shadowColor: Colors.blue,
    //   child: ListTile(
    //     leading: SvgPicture.asset('assets/full_pizzea.svg',height: double.infinity),
    //     title: const Text("30 Nov, 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w100,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     trailing: Container(
    //       width: 100,
    //       height: 30,
    //       child: Card(
    //         elevation: 5,
    //         shadowColor: Colors.greenAccent,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(50),
    //           side: const BorderSide(
    //             color: Colors.black,
    //           ),
    //         ),
    //         child: const Center(
    //           child: Text('Remind me',style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 14,
    //             fontWeight: FontWeight.w100,
    //           ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
    // Card(
    //   elevation: 5,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   shadowColor: Colors.blue,
    //   child: ListTile(
    //     leading: SvgPicture.asset('assets/full_pizzea.svg',height: double.infinity),
    //     title: const Text("30 Nov, 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w100,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     trailing: Container(
    //       width: 100,
    //       height: 30,
    //       child: Card(
    //         elevation: 5,
    //         shadowColor: Colors.greenAccent,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(50),
    //           side: const BorderSide(
    //             color: Colors.black,
    //           ),
    //         ),
    //         child: const Center(
    //           child: Text('Remind me',style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 14,
    //             fontWeight: FontWeight.w100,
    //           ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
    // Card(
    //   elevation: 5,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   shadowColor: Colors.blue,
    //   child: ListTile(
    //     leading: SvgPicture.asset('assets/full_pizzea.svg',height: double.infinity),
    //     title: const Text("30 Nov, 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w100,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     trailing: Container(
    //       width: 100,
    //       height: 30,
    //       child: Card(
    //         elevation: 5,
    //         shadowColor: Colors.greenAccent,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(50),
    //           side: const BorderSide(
    //             color: Colors.black,
    //           ),
    //         ),
    //         child: const Center(
    //           child: Text('Remind me',style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 14,
    //             fontWeight: FontWeight.w100,
    //           ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
    // Card(
    //   elevation: 5,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   shadowColor: Colors.blue,
    //   child: ListTile(
    //     leading: SvgPicture.asset('assets/full_pizzea.svg',height: double.infinity),
    //     title: const Text("30 Nov, 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.w100,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //       fontSize: 12,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.black38,
    //     ),
    //     ),
    //     trailing: Container(
    //       width: 100,
    //       height: 30,
    //       child: Card(
    //         elevation: 5,
    //         shadowColor: Colors.greenAccent,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(50),
    //           side: const BorderSide(
    //             color: Colors.black,
    //           ),
    //         ),
    //         child: const Center(
    //           child: Text('Remind me',style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 14,
    //             fontWeight: FontWeight.w100,
    //           ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
    // Container(
    //   width: 200,
    //   child: ListView.builder(
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         leading: SvgPicture.asset('assets/full_pizzea.svg'),
    //         title: const Text("30 Nov, 2019", style: TextStyle(
    //           fontSize: 12,
    //           fontWeight: FontWeight.w100,
    //           color: Colors.black38,
    //         ),
    //         ),
    //         subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //           fontSize: 12,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.black38,
    //         ),
    //         ),
    //         trailing: Container(
    //           width: 100,
    //           height: 30,
    //           child: Card(
    //             elevation: 5,
    //             shadowColor: Colors.greenAccent,
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50),
    //               side: const BorderSide(
    //                 color: Colors.black,
    //               ),
    //             ),
    //             child: const Center(
    //               child: Text('Remind me',style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w100,
    //               ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //     itemCount: 2,
    //     shrinkWrap: true,
    //   ),
    // ),
    // Container(
    //   width: 200,
    //   child: ListView.builder(
    //     itemBuilder: (context, index) {
    //       return ListTile(
    //         leading: SvgPicture.asset('assets/full_pizzea.svg',height: double.infinity),
    //         title: const Text("30 Nov, 2019", style: TextStyle(
    //           fontSize: 12,
    //           fontWeight: FontWeight.w100,
    //           color: Colors.black38,
    //         ),
    //         ),
    //         subtitle: const Text("Monthly Feast on 30th November 2019", style: TextStyle(
    //           fontSize: 12,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.black38,
    //         ),
    //         ),
    //         trailing: Container(
    //           width: 100,
    //           height: 30,
    //           child: Card(
    //             elevation: 5,
    //             shadowColor: Colors.greenAccent,
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(50),
    //               side: const BorderSide(
    //                 color: Colors.black,
    //               ),
    //             ),
    //             child: const Center(
    //               child: Text('Remind me',style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 14,
    //                 fontWeight: FontWeight.w100,
    //               ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //     itemCount: 2,
    //     shrinkWrap: true,
    //   ),
    // ),

    Container(

      width: 100,
      color: Colors.red,
    ),

    Container(

      width: 100,
      color: Colors.green,
    ),
    //
    // Container(
    //
    //   width: 100,
    //   color: Colors.red,
    // ),
    //
    // Container(
    //
    //   width: 100,
    //   color: Colors.red,
    // ),
    //
    // Container(
    //
    //   width: 100,
    //   color: Colors.red,
    // ),
    //
    // Container(
    //
    //   width: 100,
    //   color: Colors.red,
    // ),
    //
    // Container(
    //
    //   width: 100,
    //   color: Colors.red,
    // ),

  ];

  List<Widget> body = [
    Icon(Icons.circle),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    //Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Dashboard"),
        titleTextStyle: const TextStyle(color: Colors.grey),
        centerTitle: true,
        //elevation: 3.0,
        //shadowColor: Colors.black,
      ),
      body: ListView(
        children: [

          DashboardLayer.topLayer(sizingInformation: sizi),
          midLayer(),
          bottomLayer(),


          // Column(
          //   children: [
          //     const Text("Meal Rate",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //         fontSize: 20,
          //         color: Colors.grey,
          //       ),
          //     ),
          //     Stack(
          //       fit: StackFit.passthrough,
          //       //alignment: Alignment.center,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
          //           child: Column(
          //             children: const [
          //               Text("Last Month", style: TextStyle(color: Colors.grey,fontSize: 10)),
          //               Text(" 76556", style: TextStyle(color: Colors.grey,fontSize: 15)),
          //             ],
          //           ),
          //         ),
          //         Container(
          //           height: 100,
          //           alignment: Alignment.center,
          //           foregroundDecoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             border: Border.all(width: 5,color: const Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
          //           ),
          //           decoration: BoxDecoration(
          //             shape: BoxShape.circle,
          //             border: Border.all(width: 10,color: const Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
          //           ),
          //           child:Column(
          //             children: [
          //               const SizedBox(height: 10),
          //               SvgPicture.asset('assets/mdi-currency-bdt.svg'),
          //               const Text("48.00",style: TextStyle(fontSize: 22,color: Colors.grey,),),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // SizedBox(height: 80,),
          // Container(
          //   width: 500,
          //   height: 200,
          //   padding: EdgeInsets.all(8.0),
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //     color: Colors.white,
          //     elevation: 5,
          //     shadowColor: Colors.tealAccent,
          //     child: Row(
          //       children: [
          //         Column(
          //           children: const [
          //             SizedBox(height: 10,),
          //             SizedBox(
          //               width: 190,
          //               height: 80,
          //               child: Card(
          //                 shadowColor: Colors.yellowAccent,
          //                 elevation: 10,
          //                 child: Center(
          //                   child: Text('           10\n Total Members',style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 20,
          //                     fontWeight: FontWeight.w400,
          //                   ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(height: 2,),
          //             SizedBox(
          //               width: 190,
          //               height: 80,
          //               child: Card(
          //                 shadowColor: Colors.blueAccent,
          //                 elevation: 10,
          //                 child: Center(
          //                   child: Text('        17\n Total Meals',style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 20,
          //                     fontWeight: FontWeight.w400,
          //                   ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //         Column(
          //           children: const [
          //             SizedBox(height: 10,),
          //             SizedBox(
          //               width: 190,
          //               height: 80,
          //               child: Card(
          //                 shadowColor: Colors.redAccent,
          //                 elevation: 10,
          //                 child: Center(
          //                   child: Text('           10\n Total Members',style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 20,
          //                     fontWeight: FontWeight.w400,
          //                   ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(height: 2,),
          //             SizedBox(
          //               width: 190,
          //               height: 80,
          //               child: Card(
          //                 shadowColor: Colors.deepPurpleAccent,
          //                 elevation: 10,
          //                 child: Center(
          //                   child: Text('        17\n Total Meals',style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 20,
          //                     fontWeight: FontWeight.w400,
          //                   ),
          //                   ),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // Container(
          //     width: 500,
          //     height: 80,
          //     child: Row(
          //       children: const [
          //         SizedBox(width: 20,),
          //         Text("Upcoming events",style: TextStyle(
          //           fontSize: 24,
          //           color: Colors.black,
          //           fontWeight: FontWeight.normal,
          //         ),
          //         ),
          //         SizedBox(width: 130,),
          //         Text("view all",style: TextStyle(
          //           fontSize: 24,
          //           color: Colors.black,
          //           fontWeight: FontWeight.normal,
          //         ),
          //         ),
          //       ],
          //     )
          // ),

          *//*SizedBox(
            height: 200,
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
                      return InkWell(
                        onTap: (){
                          print(index);
                          setState(() {
                            selectedIndex = index;
                          });
                          _pageController.animateToPage(index,curve: Curves.easeIn,duration: Duration(milliseconds: 200));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(tabData[index]),
                              Container(
                                height: 10,
                                width: 60,
                                color: selectedIndex == index ? Colors.yellow : Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Expanded(
                  child: PageView(
                    controller: _pageController,
                    children: pageList,
                  ),
                )

              ],
            ),
          ),*//*


          // Container(
          //   //margin: EdgeInsets.symmetric(vertical: 20.0),
          //   //height: 10,
          //   //width: 400,
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: const [
          //         SizedBox(width: 20,),
          //         Text("All",style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w100,
          //           ),
          //         ),
          //         SizedBox(width: 20,),
          //         Text("Monthly feast",style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w100,
          //           ),
          //         ),
          //         SizedBox(width: 20,),
          //         Text("Birthday",style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w100,
          //           ),
          //         ),
          //         SizedBox(width: 20,),
          //         Text("Marriage anniversary",style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w100,
          //           ),
          //         ),
          //         SizedBox(width: 20,),
          //         Text("Eid",style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w100,
          //           ),
          //         ),
          //         SizedBox(width: 20,),
          //         Text("Puja",style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w100,
          //           ),
          //         ),
          //         SizedBox(width: 20,),
          //         Text("Others",style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w100,
          //           ),
          //         ),
          //         SizedBox(width: 20,),
          //       ],
          //     ),
          //   ),
          // ),
          //const SizedBox(height: 20,),
         *//* const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Gossip",style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(8.0),
            child: const Text(
                'All 4 pie chart should have a common filter based on month, quarter.\nalso should have a print option\npie chart need to be enhanced.Full length court name, black color text.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
            ),
          ),
          const SizedBox(height: 10,),*//*
          // Row(
          //   children: const [
          //     SizedBox(width: 30,),
          //     Icon(Icons.favorite),
          //     SizedBox(width: 30,),
          //     Icon(Icons.messenger_outline),
          //     SizedBox(width: 30,),
          //     Icon(Icons.share),
          //   ],
          // ),
          //SizedBox(height: 20,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _buttomIndex,
        items: const [
          BottomNavigationBarItem(
            label: "MEMBERS",
            icon: Icon(
              Icons.circle_sharp,
              color: Colors.white30,
            ),
          ),
          BottomNavigationBarItem(
            label: "BAZAR LIST",
            icon: Icon(
              Icons.circle_sharp,
              color: Colors.white30,
            ),
          ),
          BottomNavigationBarItem(
            label: "#MEAL",
            icon: Icon(
              Icons.circle_sharp,
              color: Colors.white30,
            ),
          ),
        ],
      ),
    );
  }
}*/


class DashboardPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

