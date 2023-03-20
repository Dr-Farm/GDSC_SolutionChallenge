
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
      appBar: AppBar(
        title: Text('Result Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('Save Success !'),
                content: const Text('This Result is saved !'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                  height: 300,
                  //width: 360,
                  color: Colors.blueGrey,
                  width: double.infinity,
                //child: Image(image: AssetImage('assets/images/landingLogo.png')),
                  ),
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
                      "Plant Disease Name",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 10.0),
                    Text("Mar 17, 2023"),
                    SizedBox(height: 10.0),
                    Divider(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.favorite),
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Save Success !'),
                              content: const Text('This Result is saved !'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("SAVE"),
                        SizedBox(
                          width: 16.0,
                        ),
                        IconButton(
                          icon: Icon(Icons.date_range_outlined),
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Add on Calendar !'),
                              content: const Text('This Result is saved on Calendar !'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("Add Calender"),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Content 1",
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Content 2",
                      textAlign: TextAlign.justify,
                    )
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
