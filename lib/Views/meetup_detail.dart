import 'package:flutter/material.dart';
import 'package:hack2k19/Classes/meetup.dart';
import 'package:hack2k19/Views/feed_back.dart';

class MeetupDetail extends StatelessWidget {
  final Meetup meetup;
  MeetupDetail(this.meetup);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white10,
            Colors.white70,
          ],
        ),
      ),
      child: Stack(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Image(
                    image: NetworkImage(meetup.image),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      meetup.title,
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Time : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(meetup.dateTime)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Type : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(meetup.type),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'No of Participents : ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(meetup.noOfParticipants),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(meetup.aboutMeet),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    height: 40.0,
                    minWidth: 200.0,
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    child: Text('Attend'),
                    onPressed: () {},
                    splashColor: Colors.red,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  MaterialButton(
                    height: 40.0,
                    minWidth: 200.0,
                    color: Colors.grey,
                    textColor: Colors.white,
                    child: Text('Give Feedback'),
                    onPressed: () {
                      Route route = MaterialPageRoute(
                            builder: (BuildContext context) => Feed_back());
                        Navigator.push(context, route);
                    },
                    splashColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30.0),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ),
        ],
      ),
    ));
  }
}
