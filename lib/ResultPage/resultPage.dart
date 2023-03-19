/*


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  // final String title;

  @override
  State<ResultPage> createState() => _ResultPage();
}

class _ResultPage extends State<ResultPage> {
  final bool alreadySaved = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Container(
                  color: Colors.blueGrey,
                  width: 273.92,
                  height: 192,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //child: FlutterLogo(size: 100),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 250.0, 16.0, 16.0),
                decoration: BoxDecoration(
                    color: Color(0xfffff9e5),
                    borderRadius: BorderRadius.circular(5.0)),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Disease Name",//이름
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    //SizedBox(height: 10.0),
                    //Text("Oct 21, 2023"),
                    SizedBox(height: 10.0),
                    Divider(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        new IconButton(
                          //alreadySaved ? Icons.favorite : Icons.favorite_border,

                          icon: Icon(Icons.favorite),
                          color: null,
                          onPressed: () {
                            color: Colors.red;
                          },


                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(//내용



                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/
