import 'package:flutter/material.dart';
import 'package:hack2k19/Classes/meetup.dart';
import 'package:hack2k19/CustomWidgets/circle_image.dart';

class MeetupTile extends StatelessWidget {
  final Meetup meetup;
  MeetupTile(this.meetup);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.black,
          child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                padding: EdgeInsets.only(right: 12.0),
                decoration: new BoxDecoration(
                    border: new Border(
                        right:
                            new BorderSide(width: 1.0, color: Colors.white24))),
                child: CircularImage(
                  NetworkImage(meetup.sourceImage),
                          width: 40,
                          height: 40,
                ),
              ),
              title: Text(
                meetup.title + ' ' + meetup.id,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text(meetup.sourceName, style: TextStyle(color: Colors.white))
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.white, size: 30.0)),
        ),
      ),
    );
  }
}
