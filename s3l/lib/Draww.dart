import 'package:flutter/material.dart';
import 'package:s3l/about.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class Draww extends StatefulWidget {
  @override
  _DrawwState createState() => _DrawwState();
}

class _DrawwState extends State<Draww> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          children: [
            DrawerHeader(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/channels4_profile.jpg"),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.pink, width: 2),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                "About",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => About()),
                );
              },
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                  'https://youtube.com/channel/UC7LPpaOK-uLVTBA6MbcFyMg'),
              builder: (context, followLink) => ListTile(
                leading: Icon(
                  Icons.live_tv,
                  color: Colors.white,
                ),
                title: Text(
                  "Channel",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: followLink,
              ),
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://solo.to/shanto_shibu'),
              builder: (context, followLink) => ListTile(
                leading: Icon(
                  Icons.public,
                  color: Colors.white,
                ),
                title: Text(
                  "Website",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: followLink,
              ),
            ),
            SizedBox(
              height: 320,
            ),
            Divider(
              color: Colors.black,
            ),
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://solo.to/ftr'),
              builder: (context, followLink) => ListTile(
                leading: Icon(
                  Icons.code,
                  color: Colors.greenAccent,
                ),
                title: Text(
                  "Developer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onTap: followLink,
              ),
            ),
          ],
        ),
      ),
    );
  }

  launchWhatsAppDev() async {
    final link = WhatsAppUnilink(
      phoneNumber: '+91-7902549662',
      text: "Hey there!",
    );
    await launch('$link');
  }
}
