import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class Connect extends StatefulWidget {
  

  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              GestureDetector(
                onTap: launchWhatsApp,
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(234, 70, 61, 1),
                        Color.fromRGBO(238, 109, 43, 1)
                      ]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "WHATSAPP",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse(
                    'https://instagram.com/shantoshibu?utm_medium=copy_link'),
                builder: (context, followLink) => GestureDetector(
                  onTap: followLink,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(234, 70, 61, 1),
                          Color.fromRGBO(238, 109, 43, 1)
                        ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "INSTAGRAM",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 44,
              ),
              LottieBuilder.asset('images/58159-social-media-marketing.json')
            ],
          ),
        ));
  }

  launchWhatsApp() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+91-9539166808',
      text: "Hey there!",
    );
    await launch('$link');
  }
}
