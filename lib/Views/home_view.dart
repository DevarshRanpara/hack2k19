import 'package:flutter/material.dart';
import 'package:hack2k19/Classes/meetup.dart';
import 'package:hack2k19/Classes/temp_data.dart';
import 'package:hack2k19/Controller/home_view_controller.dart';
import 'package:hack2k19/CustomWidgets/loading_animation.dart';
import 'package:hack2k19/CustomWidgets/meetup_tile.dart';
import 'package:hack2k19/Views/meetup_detail.dart';

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
          colors: [
            Colors.white10,
            Colors.white70,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'View Events',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
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
                    return InkWell(
                      onTap: () {
                        Route route = MaterialPageRoute(
                            builder: (BuildContext context) => MeetupDetail(snapshot.data[index]));
                        Navigator.push(context, route);
                      },
                      child: MeetupTile(snapshot.data[index]),
                    );
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
