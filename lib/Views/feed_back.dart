import 'package:flutter/material.dart';
import 'package:hack2k19/misc/rating.dart';

class Feed_back extends StatefulWidget {
  @override
  _Feed_backState createState() => new _Feed_backState();
}

class _Feed_backState extends State<Feed_back> {
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
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.8,0.9],
                colors: [
                  Colors.white10,
                  Colors.black12,
                ],
              ),
            ),
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
                    "Feed Back",
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 55, horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Rating(
                          initialRating: _ratings[2],
                          size: 48.0,
                          color: Colors.amber,
                          onRated: (int value) {
                            setState(() {
                              _ratings[2] = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextField(
                    controller: _textFieldController,
                    decoration: InputDecoration(
                      hintText: "Your Comments",
                      icon: Icon(Icons.label),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: RaisedButton(
                    child: const Text('Submit'),
                    color: Colors.grey,
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
