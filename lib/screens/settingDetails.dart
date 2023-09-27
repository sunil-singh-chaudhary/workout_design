import 'package:auto_route/auto_route.dart';
import 'package:fitnesspro/routes/AppRouter.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'settingDetailsScreenRoute')
class SettingDetailRoute extends StatefulWidget {
  const SettingDetailRoute({super.key});

  @override
  State<SettingDetailRoute> createState() => _SettingDetailRouteState();
}

class _SettingDetailRouteState extends State<SettingDetailRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SettingDetailRoute')),
      backgroundColor: Colors.orange,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.router.push(const ActivityScreenRoute());
            },
            child: const Text('Go to next page')),
      ),
    );
  }
}
