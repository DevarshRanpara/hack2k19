import 'package:flutter/material.dart';
import 'package:hack2k19/Classes/meetup.dart';
import 'package:hack2k19/Classes/temp_data.dart';
import 'package:hack2k19/Controller/home_view_controller.dart';
import 'package:hack2k19/CustomWidgets/loading_animation.dart';
import 'package:hack2k19/CustomWidgets/meetup_tile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeViewController controller = HomeViewController();
    controller.getData();
    // List<Meetup> data = List<Meetup>();
    // data = TempData.getData();
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.pink[100],
            Colors.pink[200],
            Colors.blue[300],
            Colors.blue[400],
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'Edit Profile',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: FutureBuilder(
            future: controller.getData(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return LoadingAnimation();
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return MeetupTile(snapshot.data[index]);
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
