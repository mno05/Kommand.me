import 'package:flutter/material.dart';
class MainVue extends StatefulWidget {
  const MainVue({super.key});

  @override
  State<MainVue> createState() => _MainVueState();
}

class _MainVueState extends State<MainVue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("MainVue"),),
    );
  }
}