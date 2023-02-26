
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrFarm extends StatelessWidget {
  const DrFarm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      home: const LandingPage(title: 'Solution Challenge_Dr.Farm'),
    );
  }
}
class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});

  final String title;

  @override
  State<LandingPage> createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(),
    );
  }
}
