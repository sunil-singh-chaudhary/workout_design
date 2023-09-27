import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'changeProvider/flavour_notifier.dart';
import 'flavour_enviornment/EnvironmentConfig.dart';
import 'routes/AppRouter.dart';
import 'screens/splashscreen.dart';

void bootstrap(String env) => runApp(
      ChangeNotifierProvider(
        create: (context) => FlavourNotifier()..setEnviornment(env),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final flavourEnv = context.read<FlavourNotifier>().environment;
    debugPrint('Runnnig Mode is--> $flavourEnv');

    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          if (flavourEnv == EnvironmentConfig.production) {
            return child!;
          }
          // TODO : Check production Flavour MODE
          return Banner(
            message: flavourEnv.toUpperCase(),
            location: BannerLocation.topEnd,
            child: child,
          );
        },
        title: 'Fitness Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _appRouter.config(), //add this here
      ),
    );
  }
}
