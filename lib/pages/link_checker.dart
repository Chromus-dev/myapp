// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// trying to build bottom app bar based off of this
// https://github.com/BilalShahid13/PersistentBottomNavBar/tree/master

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkCheckerPage extends StatefulWidget {
  static const title = "Link Checker";
  static const icon = Icon(CupertinoIcons.profile_circled);

  const LinkCheckerPage({super.key});

  @override
  State<LinkCheckerPage> createState() => _LinkCheckerPageState();
}

class _LinkCheckerPageState extends State<LinkCheckerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(LinkCheckerPage.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times:',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
