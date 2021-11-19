import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/link.dart';

import 'listcata.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

 
 
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 75, 205, 1),
      body: SafeArea(
        child: ListView(physics: BouncingScrollPhysics(), children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "S3L CARSTECH",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("images/channels4_profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                    
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Itenscat(),
          SizedBox(
            height: 20,
          ),
          Link(
            target: LinkTarget.blank,
            uri: Uri.parse(
                'https://youtube.com/channel/UC7LPpaOK-uLVTBA6MbcFyMg'),
            builder: (context, followLink) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: followLink,
                child: Container(
                  alignment: Alignment.center,
                  height: 170,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(209, 145, 44, 1),
                        Color.fromRGBO(212, 155, 101, 1)
                      ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "GO TO CHANNEL",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          
         
          
        ]),
      ),
    );
  }
}
