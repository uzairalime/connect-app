import 'package:connectapp/utilities/appdimenstios.dart';
import 'package:connectapp/utilities/colors/appcolors.dart';
import 'package:connectapp/utilities/text/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              const Text("data"),
              // app bar btns
              Container(
                height: Get.height * 0.085,
                width: Get.width * 0.80,
                decoration: BoxDecoration(
                  color: Appcolors().secondary,
                  borderRadius: BorderRadius.circular(AppDm().radiusxx),
                ),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: whiteTextmd,
                  unselectedLabelStyle:
                      whiteTextmd.copyWith(color: Appcolors().primaryColor),
                  indicator: BoxDecoration(
                    gradient: Appcolors().primary,
                    borderRadius: BorderRadius.circular(AppDm().radiusxx),
                  ),
                  tabs: const [
                    Tab(
                      text: "New Connections",
                    ),
                    Tab(
                      text: "My Connections",
                    ),
                  ],
                ),
              ),
              Text("data"),
              Container(
                width: Get.width,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppDm().radiusxx),
                    topRight: Radius.circular(AppDm().radiusxx),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 0),
                      blurRadius: 5,
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.calendar_month),
                    Icon(Icons.location_off),
                    Icon(Icons.pin),
                    Icon(Icons.abc),
                  ],
                ),
              ),
              // bottom screens
              const Expanded(
                child: TabBarView(
                  children: [
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
