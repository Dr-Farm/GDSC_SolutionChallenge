
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

 // final String title;

  @override
  State<ResultPage> createState() => _ResultPage();
}

class _ResultPage extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: 360,
        height: 800,
        color: Color(0xfffffcf4),
        child: Stack(
          children:[
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 681,
                  height: 677,
                  child: Stack(
                    children:[Positioned.fill(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 681,
                          height: 398,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffbad0ad),
                          ),
                        ),
                      ),
                    ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 681,
                            height: 478,
                            color: Color(0xffbad0ad),
                          ),
                        ),
                      ),],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 42.03,
              top: 64,
              child: Container(
                width: 273.92,
                height: 192,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FlutterLogo(size: 192),
              ),
            ),
            Positioned(
              left: 37,
              top: 270,
              child: Container(
                width: 284,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xfffff9e5), width: 1.50, ),
                  color: Color(0xfffff9e5),
                ),
                padding: const EdgeInsets.only(left: 102, right: 100, top: 17, bottom: 26, ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    SizedBox(
                      width: 82.20,
                      height: 9.07,
                      child: Text(
                        "DiseaseName",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 39,
              top: 322,
              child: Container(
                width: 277,
                height: 338,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfffff9e5),
                ),
                padding: const EdgeInsets.only(bottom: 275, ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      width: 251,
                      height: 1,
                    ),
                    SizedBox(height: 25.96),
                    SizedBox(
                      width: 82.20,
                      height: 9.07,
                      child: Text(
                        "DiseaseName",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.96),
                    Container(
                      width: 229,
                      height: 1,
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 277,
                  height: 338,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfffff9e5),
                  ),
                  padding: const EdgeInsets.only(bottom: 337, ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Container(
                        width: 251,
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 139,
              top: 22,
              child: Container(
                width: 110.20,
                height: 22.73,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      width: 22.73,
                      height: 22.73,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: FlutterLogo(size: 22.727272033691406),
                    ),
                    SizedBox(width: 5.27),
                    SizedBox(
                      width: 82.20,
                      height: 9.07,
                      child: Text(
                        "Dr.Farm",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 346.50,
              top: 326.50,
              child: Container(
                width: 5,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffaec1a2),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
