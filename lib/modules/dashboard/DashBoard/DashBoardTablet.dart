import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mess_xp_app_project/modules/dashboard/dashboard_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DashboardPageTabletPortrait extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardPageTabletPortrait({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}

class DashboardPageTabletLandscape extends GetView<DashboardLogic> {
  final SizingInformation? sizingInformation;
  const DashboardPageTabletLandscape({Key? key, this.sizingInformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<DashboardLogic>();
    return Container();
  }
}