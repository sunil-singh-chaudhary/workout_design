import 'package:auto_route/auto_route.dart';
import 'package:fitnesspro/routes/AppRouter.gr.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'navigationScreen.dart';

@RoutePage(name: 'splashScreen')
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6175e5),
      body: Column(
        children: [
          SizedBox(height: 30.h),
          SizedBox(
            height: 30.h,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.fire_extinguisher,
                    color: Colors.orange, size: 34.sp),
                Text(
                  'FireFit',
                  style: TextStyle(
                      fontFamily: 'JungleFever',
                      fontSize: 22.sp,
                      color: Colors.white),
                ),
                Text(
                  'stay in shape,Stay Healthy',
                  style: TextStyle(
                      fontFamily: 'JungleFever',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(1),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xffff605a)),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
              SizedBox(height: 2.h),
              ElevatedButton(
                onPressed: () {
                  // AutoRouter.of(context).push(const NavigationRoute());
                  context.router.push(NavigationRoute());
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(1),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Text(
                  ' Login ',
                  style: TextStyle(
                      color: const Color(0xffff605a), fontSize: 15.sp),
                ),
              ),
              Container(
                  height: 5.h,
                  alignment: Alignment.topCenter,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'Forgot Your Password ?',
                      style: TextStyle(color: Colors.white, fontSize: 10.sp),
                    ),
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
