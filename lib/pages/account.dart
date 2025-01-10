import 'package:flutter/cupertino.dart';

class AccountPage extends StatefulWidget {
  static const title = "Account";
  static const icon = Icon(CupertinoIcons.profile_circled);

  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text(AccountPage.title),
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
