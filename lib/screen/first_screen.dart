import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('calendar'),
      ),
      child: Container(
        child: TableCalendar(
          firstDay: DateTime.utc(2022, 1, 1),
          focusedDay: DateTime.now(),
          lastDay: DateTime.utc(2030, 12, 31),
        ),
      ),
    );
  }
}
