import 'package:flutter/material.dart';

class SetupPage extends StatefulWidget {
  const SetupPage({super.key});
  @override
  State createState() => _SetupPageState();
}

class _SetupPageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text('Setup Page'),
      ),
    );
  }
}