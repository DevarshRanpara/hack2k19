import 'package:flutter/material.dart';
import 'package:hack2k19/Views/login_view.dart';
import 'package:hack2k19/Views/temp.dart';

import 'Views/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
