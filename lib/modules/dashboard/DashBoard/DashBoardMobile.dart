import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobilePortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get.find<DashboardLogic>();
    return Scaffold(
      appBar: AppBar(
        title: Center(
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
}

class DashboardPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;
  const DashboardPageMobileLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}