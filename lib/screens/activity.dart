import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'activityScreenRoute')
class NewActivity extends StatefulWidget {
  const NewActivity({super.key});

  @override
  State<NewActivity> createState() => _NewActivityState();
}

class _NewActivityState extends State<NewActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Activity')),
      backgroundColor: Colors.green,
    );
  }
}
