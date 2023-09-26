import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:fitnesspro/screens/horizontaldateview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data = [0.0, 0.3, 0.7, 1.0, 1.1, 1.5, 1.9, 2.0, 2.5, 2.9, 3.0];

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
            'Amara',
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
          child: HorizontalCalendar(),
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
              _buildLineChart()
            ]),
          ),
        ),
      ]),
    );
  }

  Container _buildLineChart() {
    return Container(
        padding: EdgeInsets.all(2.w),
        //PIE CHART
        height: 25.h,
        width: 50.w,
        child: Center(
          child: Sparkline(
            data: data,
            lineGradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 155, 157, 163),
                Color(0xffffffff),
              ],
            ),
            lineWidth: 10,
            pointsMode: PointsMode.atIndex,
            pointIndex: 7,
            pointSize: 16.0,
            pointColor: Colors.amber,
            useCubicSmoothing: true,
            cubicSmoothingFactor: 0.2,
          ),
        ));
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
