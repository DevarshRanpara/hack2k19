import 'package:flutter/material.dart';
import 'package:hack2k19/misc/rating.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textFieldController = TextEditingController();
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.pinkAccent,
    Colors.blue
  ];
  List<int> _ratings = [
    4,
    2,
    3,
    4,
    3,
    5,
    2,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            child: new Column(
              
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Divider(
                  height: 50.0,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Text(
                    "Feed Back",style: TextStyle(fontSize: 30,color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(55.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Rating(
                        initialRating: _ratings[2],
                        size: 48.0,
                        color: Colors.amber,
                        onRated: (int value) {
                          setState(() {
                            _ratings[2] = value;
                          });
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          _ratings[2].toString(),
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: _textFieldController,
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      icon: Icon(Icons.label),
                    ),
                  ),
                ),
                
                
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: RaisedButton(
                child: const Text('Submit'),
                color: Theme.of(context).accentColor,
                elevation: 4.0,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  // Perform some action
                },
            ),
              ),
                
              ],
            ),
          ),
        ));
  }
}
