import 'package:flutter/cupertino.dart';

class LinkCheckerPage extends StatefulWidget {
  static const title = "Link Checker";
  static const icon = Icon(CupertinoIcons.search);

  const LinkCheckerPage({super.key});

  @override
  State<LinkCheckerPage> createState() => _LinkCheckerPageState();
}

class _LinkCheckerPageState extends State<LinkCheckerPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text(LinkCheckerPage.title),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text('You have pressed the button $_count times.'),
              ),
              const SizedBox(height: 20.0),
              Center(
                child: CupertinoButton.filled(
                  onPressed: () => setState(() => _count++),
                  child: const Icon(CupertinoIcons.add),
                ),
              ),
            ],
          ),
        ));
  }
}
