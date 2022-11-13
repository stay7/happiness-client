import 'package:flutter/cupertino.dart';
import 'package:happiness_client/screen/home/tab_calendar.dart';
import 'package:happiness_client/screen/home/tab_home.dart';
import 'package:happiness_client/screen/home/tab_settings.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "HomeScreen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar)),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings)),
      ]),
      tabBuilder: (context, index) {
        switch(index){
          case 0:
            return FirstScreen();
          case 1:
            return CalendarTab();
          case 2:
            return SettingsTab();
          default:
            return FirstScreen();
        }
      },
    );
  }
}
