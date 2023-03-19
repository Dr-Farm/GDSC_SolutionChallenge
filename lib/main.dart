import 'package:flutter/material.dart';
import 'package:solution_challenge/image.dart';
import 'package:solution_challenge/landingPage.dart';
import 'package:solution_challenge/resultPage.dart';

import 'memo/page/notes_page.dart';

void main() {
  runApp(const DrFarm());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC Solution Challenge',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Solution Challenge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: 400,
        height: 1200,
        color: Color(0xfffffcf4),
        padding: const EdgeInsets.only(top: 40, ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Row(
              children: [
                SizedBox(width: 10, height: 33,),
                Container(
                  width: 30,
                  height: 30,
                  child:
                  IconButton(
                    icon: Icon(Icons.settings),//북마크 아이콘
                    color: Colors.grey,
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ),
                SizedBox(width: 290,),
                Container(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: Icon(Icons.bookmark),//북마크 아이콘
                    color: Colors.grey,
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 130),//설정 아이콘이랑 검색바 사이
            GestureDetector(//검색바,
              onTap: (){
                print("Container clicked");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SafeArea(child: ResultPage())), // CameraExample()로 연결
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(//검색바
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color(0xff7aac5d), width: 1.50, ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 16, top:7, right: 200, ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child:  Image(image: AssetImage('assets/images/logo.png')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 230),
            Container(//뉴스박스
              width: 290,
              height: 228,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.20, ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3f000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(left: 126, right: 126, ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  SizedBox(
                    width: 37,
                    height: 12,
                    child: Text(
                      "[News]",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 1000,
              height: 60,
              child: Stack(
                children:[
                  Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(255, 233, 160, 100),

                      ),
                      child: Row(
                        children:[
                          GestureDetector(
                            onTap: (){
                              print("click calender");
                            },
                            child : Container(
                              width: 169,
                              height: 58,
                              child:
                              Row(
                                children: [
                                  SizedBox(width: 60,),
                                  Column(
                                    children: [
                                      Image(
                                          width: 40,
                                          height: 40,
                                          image: AssetImage('assets/images/cal.png')),
                                      SizedBox(height: 1),
                                      Text(
                                        "calendar",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 45),
                          GestureDetector(
                            onTap: (){
                              print("click memo");
                              //static final String title = 'Notes SQLite';

                              /**@override
                              Widget build(BuildContext context) => MaterialApp(
                                debugShowCheckedModeBanner: false,
                                //title: title,
                                themeMode: ThemeMode.dark,
                                theme: ThemeData(
                                  primaryColor: Colors.black,
                                  scaffoldBackgroundColor: Colors.white10,
                                  appBarTheme: AppBarTheme(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                ),
                                home: NotesPage(),
                              );**/
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SafeArea(child: NotesPage())),
                              );

                            },
                            child : Container(
                              width: 169,
                              height: 58,
                              child:
                              Row(
                                children: [
                                  SizedBox(width: 75,),
                                  Column(
                                    children: [
                                      Image(
                                          width: 40,
                                          height: 40,
                                          image: AssetImage('assets/images/memoIcon.png')),
                                      SizedBox(height: 1),
                                      Text(
                                        "memo",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Image(image: AssetImage('assets/images/cloverButton.png')),
                      ),
                    ),
                  ),],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
