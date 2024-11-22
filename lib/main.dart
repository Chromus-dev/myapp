import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import 'package:myapp/screens/link_checker.dart';
import 'package:myapp/screens/account.dart';
import 'package:myapp/screens/history.dart';

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ScamLikely',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 94, 20)),
        useMaterial3: true,
      ),
      home: const LinkChecker(
        title: 'ScamLikely',
      ),
      initialRoute: '/',
      routes: {
        '/history': (final context) => const History(),
        '/account': (final context) => const Account(),
      )
      },
    );
  }
}
