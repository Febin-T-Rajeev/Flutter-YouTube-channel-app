import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:s3l/Draww.dart';
import 'package:s3l/album.dart';
import 'package:s3l/connrct.dart';
import 'package:s3l/home.dart';
import 'package:s3l/videos.dart';
import 'package:flutter/services.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: bottonNav(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(50, 75, 205, 1),
        ),
        drawer: Draww(),
        body: buildPages(),
      ),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 1:
        return HomeScreen();
      case 2:
        return Album();
      case 3:
        return Connect();
      case 0:
      default:
        return Home();
    }
  }

  Widget bottonNav() {
    return BottomNavyBar(
      itemCornerRadius: 16,
      backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      items: [
        BottomNavyBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.redAccent,
            ),
            title: Text("Home"),
            textAlign: TextAlign.center,
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.blueGrey[500]),
        BottomNavyBarItem(
            icon: Icon(Icons.video_call, color: Colors.redAccent),
            title: Text(
              "Videos",
            ),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.yellow),
        BottomNavyBarItem(
            icon: Icon(Icons.photo, color: Colors.redAccent),
            title: Text("Album"),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.blueGrey[500]),
        BottomNavyBarItem(
            icon: Icon(Icons.link, color: Colors.redAccent),
            title: Text("Connect"),
            activeColor: Colors.greenAccent,
            inactiveColor: Colors.blueGrey[500]),
      ],
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
    );
  }
}
