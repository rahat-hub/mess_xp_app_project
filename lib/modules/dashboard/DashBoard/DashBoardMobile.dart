import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;
  DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  int _buttomIndex = 0;

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
          Column(
            children: [
              const Text("Meal Rate",
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
                        Text("Last Month", style: TextStyle(color: Colors.grey,fontSize: 10)),
                        Text(" 76556", style: TextStyle(color: Colors.grey,fontSize: 15)),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    alignment: Alignment.center,
                    foregroundDecoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 5,color: const Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 10,color: const Color.fromARGB(150, 242, 201, 76), style: BorderStyle.solid),
                    ),
                    child:Column(
                      children: [
                        const SizedBox(height: 10),
                        SvgPicture.asset('assets/images/mdi-currency-bdt.svg'),
                        const Text("48.00",style: TextStyle(fontSize: 22,color: Colors.grey,),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 80,),
          Container(
            width: 500,
            height: 200,
            padding: EdgeInsets.all(8.0),
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
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 190,
                        height: 80,
                        child: Card(
                          child: Center(
                            child: Text('           10\n Total Members',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2,),
                      SizedBox(
                        width: 190,
                        height: 80,
                        child: Card(
                          child: Center(
                            child: Text('        17\n Total Meals',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 190,
                        height: 80,
                        child: Card(
                          child: Center(
                            child: Text('           10\n Total Members',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2,),
                      SizedBox(
                        width: 190,
                        height: 80,
                        child: Card(
                          child: Center(
                            child: Text('        17\n Total Meals',style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 500,
            height: 80,
            child: Row(
              children: const [
                SizedBox(width: 20,),
                Text("Upcoming events",style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                ),
                SizedBox(width: 130,),
                Text("view all",style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                ),
              ],
            )
          ),
          SizedBox(
            //margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 100,
            //width: 400,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                Text("All",style: TextStyle(
                color: Colors.white30,
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
              ),
              SizedBox(width: 20,),
              Text("All",style: TextStyle(
                color: Colors.white30,
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
              ),
              SizedBox(width: 20,),
              Text("All",style: TextStyle(
                color: Colors.white30,
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
              ),
              SizedBox(width: 20,),
              Text("All",style: TextStyle(
                color: Colors.white30,
                fontSize: 16,
                fontWeight: FontWeight.w100,
              ),
              ),
                ],
              ),
          ),
          ),
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
}


class DashboardPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



/*class DashboardPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Dash Board",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.normal,
                color: Colors.grey,
              ),
          ),
        ),
        leading: SvgPicture.asset('assets/vector.svg', height: MediaQuery.of(context).size.height * 0.005,
          alignment: Alignment.bottomCenter,),
        actions: <Widget>[
          SvgPicture.asset('assets/mobile_vell_alart.svg', height: MediaQuery.of(context).size.height * .04,
              alignment: Alignment.center),
        ],
        elevation: 2,
        shadowColor: Colors.grey,
      ),
    );
  }
}*/

/*Center(
child: Card(
color: Colors.white30,
elevation: 5,
shadowColor: Colors.black54,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
child: Container(
width: 500,
height: 200,
),
),
),*/




/*ListView(
padding: const EdgeInsets.all(8.0),
scrollDirection: Axis.horizontal,

children: const [
ListTile(
title: Text('all',style: TextStyle(
color: Colors.white30,
fontSize: 16,
fontWeight: FontWeight.w100,
),
),
),
ListTile(
title: Text('all',style: TextStyle(
color: Colors.white30,
fontSize: 16,
fontWeight: FontWeight.w100,
),
),
),
ListTile(
title: Text('all',style: TextStyle(
color: Colors.white30,
fontSize: 16,
fontWeight: FontWeight.w100,
),
),
),
ListTile(
title: Text('all',style: TextStyle(
color: Colors.white30,
fontSize: 16,
fontWeight: FontWeight.w100,
),
),
),
ListTile(
title: Text('all',style: TextStyle(
color: Colors.white30,
fontSize: 16,
fontWeight: FontWeight.w100,
),
),
),
ListTile(
title: Text('all',style: TextStyle(
color: Colors.white30,
fontSize: 16,
fontWeight: FontWeight.w100,
),
),
),
ListTile(
title: Text('all',style: TextStyle(
color: Colors.white30,
fontSize: 16,
fontWeight: FontWeight.w100,
),
),
),
],
),*/