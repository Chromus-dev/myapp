import 'package:flutter/cupertino.dart';

class HistoryPage extends StatefulWidget {
  static const title = "History";
  static const icon = Icon(CupertinoIcons.time_solid);

  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text(HistoryPage.title),
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
