import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'Registration/RegistrationMobile.dart';
import 'Registration/RegistrationTable.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayoutBuilder(
            portrait: (context) => RegisterPageMobilePortrait(sizingInformation: sizingInformation),
            landscape: (context) => RegisterPageMobileLandscape(sizingInformation: sizingInformation),
          ),
          tablet: OrientationLayoutBuilder(
            portrait:(context) => RegisterPageTabletPortrait(sizingInformation: sizingInformation),
            landscape: (context) => RegisterPageTabletLandscape(sizingInformation: sizingInformation,),
          ),
        );
      },
    );
  }
}


