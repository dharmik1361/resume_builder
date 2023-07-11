// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_builder/contact.dart';
import 'package:resume_builder/new.dart';

class work3 extends StatelessWidget {
  const work3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resume "),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
              height: 90,
              width: double.infinity,
              color: Colors.blue,
              child: Text(
                "Build Options",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.contact_mail_outlined),
                  title: Text(
                    "Contact info",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Contact(),
                    ));
                  },
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.bagShopping),
                  title: Text(
                    "Carrier objective",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => carrier(),
                    ));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    "personal details",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Personal(),
                    ));
                  },
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.graduationCap),
                  title: Text(
                    "education",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.headSideVirus),
                  title: Text(
                    "Experience",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => experience()));
                  },
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.fileCircleExclamation),
                  title: Text(
                    "Technical skill",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => tech(),
                    ));
                  },
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.bookOpen),
                  title: Text(
                    "interest/Hobbies",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.certificate),
                  title: Text(
                    "Project",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.trophy),
                  title: Text(
                    "Achievement",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Archivement(),
                    ));
                  },
                ),
                ListTile(
                    leading: FaIcon(FontAwesomeIcons.handshake),
                    title: Text(
                      "References",
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Refrence(),
                      ));
                    }),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.list),
                  title: Text(
                    "Declaration",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
