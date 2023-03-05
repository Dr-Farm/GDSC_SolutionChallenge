
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:solution_challenge/resultPage.dart';

import 'main.dart';

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
/**
 * 화면 크기 : 400 * 1200
 *
 *
 *
 */
class _LandingPage extends State<LandingPage> {
  void initState(){
    //3초후에 메인페이지로 진입하게 해주는 timer
    Timer(Duration(seconds: 3),(){
      //Get.offAll(MyHomePage(title: 'Solution Challenge'));
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => MyApp()
      )
      );
      //  다시 landing페이지로 이동하는것 방지
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Align(
        alignment: Alignment(0.0,-0.5),
        child:Container(
          width: 224,
          height: 60,
          child:  Image(image: AssetImage('assets/images/landingLogo.png')),//랜딩페이지 로고
        ),
      ),
    );
  }
}
