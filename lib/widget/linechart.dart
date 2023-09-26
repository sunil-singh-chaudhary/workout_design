import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    super.key,
    required this.data,
  });

  final List<double> data;

  @override
  Widget build(BuildContext context) {
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
}
