import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'changeProvider/flavour_notifier.dart';
import 'flavour_enviornment/EnvironmentConfig.dart';
import 'screens/splashscreen.dart';

void bootstrap(String env) => runApp(
      ChangeNotifierProvider(
        create: (context) => FlavourNotifier()..setEnviornment(env),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final flavour_environment = context.read<FlavourNotifier>().environment;
    debugPrint('Runnnig Mode is--> $flavour_environment');

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          if (flavour_environment == EnvironmentConfig.production) {
            return child!;
          }
          //check production or not else banner show
          return Banner(
            message: flavour_environment.toUpperCase(),
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
