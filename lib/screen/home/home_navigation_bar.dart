import 'package:flutter/cupertino.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoNavigationBar(
      middle: Text('calendar'),
    );
  }
}
