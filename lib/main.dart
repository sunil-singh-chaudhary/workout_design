import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'screens/splashscreen.dart';

void bootstrap(String env) => runApp(MyApp(env: env));

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.env});
  final String env;

  @override
  Widget build(BuildContext context) {
    debugPrint('mode is $env');
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          if (env == 'production') return child!;
          return Banner(
            message: env.toUpperCase(),
            location: BannerLocation.topEnd,
            child: child,
          );
        },
        title: 'Fitness Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
