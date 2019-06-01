import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:hack2k19/Classes/strings.dart';


// Loading Animation, Bcz we want somethig new

class LoadingAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 25.0),
        child: SizedBox(
          height: 200,
          width: 200,
          child: FlareActor(
            Strings.loadingFlr,
            animation: Strings.loadingFlrAnimtion,
          ),
        ),
      ),
    );
  }
}
