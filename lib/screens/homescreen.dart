import 'package:fitnesspro/changeProvider/flavour_notifier.dart';
import 'package:fitnesspro/flavour_enviornment/EnvironmentConfig.dart';
import 'package:fitnesspro/widget/horizontaldateview.dart';
import 'package:fitnesspro/widget/linechart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String environment;
  var data = [0.0, 0.3, 0.7, 1.0, 1.1, 1.5, 1.9, 2.0, 2.5, 2.9, 3.0];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    environment = context.read<FlavourNotifier>().environment;
  }

  late bool isCurrent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // This hides the back button
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        //10 height
        Container(
          alignment: Alignment.bottomLeft,
          height: 5.h,
          margin: EdgeInsets.only(left: 5.w),
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          height: 5.h,
          margin: EdgeInsets.only(left: 5.w),
          child: Text(
            'Amara -> ${environment == EnvironmentConfig.development ? 'Developer' : environment == EnvironmentConfig.staging ? 'Staging' : 'Production'}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color(0xff6f8dcb),
              fontSize: 18.sp,
            ),
          ),
        ),

        Container(
          width: 90.w,
          height: 10.h,
          child: const HorizontalCalendar(),
        ),
        Container(
          height: 30.h,
          width: 90.w,
          color: Colors.orange,
          alignment: Alignment.center,
        ),
        Container(
          height: 30.h,
          width: 90.w,
          color: Colors.white30,
          alignment: Alignment.center,
          child: Card(
            borderOnForeground: true,
            elevation: 1,
            color: const Color(0xff6175e5),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  firstwidgetTracker(),
                  firstwidgetTracker(),
                  firstwidgetTracker(),
                ],
              ),
              LineChartWidget(data: data)
            ]),
          ),
        ),
      ]),
    );
  }

  Container firstwidgetTracker() {
    return Container(
      height: 8.h,
      width: 30.w,
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 2.w, top: 2.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.fire_extinguisher,
            color: Colors.white,
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            '3680',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
