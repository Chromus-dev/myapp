// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// trying to build bottom app bar based off of this
// https://github.com/BilalShahid13/PersistentBottomNavBar/tree/master

import 'package:flutter/material.dart';

class LinkChecker extends StatefulWidget {
  const LinkChecker({super.key, required this.title});

  final String title;

  @override
  State<LinkChecker> createState() => _LinkCheckerState();
}

class _LinkCheckerState extends State<LinkChecker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
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
