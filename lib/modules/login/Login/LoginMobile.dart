import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPageMobilePortrait extends StatelessWidget {
  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //const String MESSXP = 'assets/messxp.svg';

    return Scaffold(
      backgroundColor: Color(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Center(child: SvgPicture.asset('assets/messxp.svg')),
          ),
        ],
      ),
    );
  }
}

class LoginPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;

  const LoginPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}