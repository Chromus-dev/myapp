import 'package:flutter/cupertino.dart';

class LinkCheckerPage extends StatefulWidget {
  static const title = "Link Checker";
  static const icon = Icon(CupertinoIcons.search);

  const LinkCheckerPage({super.key});

  @override
  State<LinkCheckerPage> createState() => _LinkCheckerPageState();
}

class _LinkCheckerPageState extends State<LinkCheckerPage> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

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
              Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      controller: _textController,
                      placeholder: 'Enter a URL',
                    ),
                  ),
                  Center(
                child: CupertinoButton.filled(
                  onPressed: () {  },
                  child: const Icon(CupertinoIcons.add),
                ),
              )],
              ),
            ],
          ),
        ));
  }
}
