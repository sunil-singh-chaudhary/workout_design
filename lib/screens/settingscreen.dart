import 'package:auto_route/auto_route.dart';
import 'package:fitnesspro/routes/AppRouter.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'settingScreenRoute')
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SettingScreen')),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                context.router.push(const SettingDetailsScreenRoute());
              },
              child: const Text('Go to next page'))),
    );
  }
}
