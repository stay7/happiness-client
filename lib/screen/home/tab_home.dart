import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happiness_client/spending/bloc/spending_bloc.dart';
import 'package:happiness_client/screen/record_spending_screen.dart';
import 'package:happiness_client/type/spending.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final dateFormat = DateFormat("yyyyMMdd");
  Map<String, List<Spending>> spendings = {};
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  List<Spending> todaySpendings = [];

  @override
  void initState() {
    super.initState();
    context.read<SpendingBloc>().add(SpendingRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpendingBloc, SpendingState>(
      buildWhen: (pre, next) => next is SpendingLoaded,
      builder: (context, state) {
        switch (state.runtimeType) {
          case SpendingLoaded:
            spendings = (state as SpendingLoaded).spendingMap;
            break;
        }
        return SafeArea(
          child: Scaffold(
            appBar: CupertinoNavigationBar(
              middle: Text('calendar'),
              trailing: CupertinoButton(
                child: Icon(CupertinoIcons.add),
                onPressed: () => Navigator.of(context).pushNamed(
                  RecordSpendingScreen.routeName,
                  arguments: RecordSpendingScreenArgument(initDate: _selectedDay),
                ),
              ),
            ),
            body: Container(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  TableCalendar<Spending>(
                    firstDay: DateTime.utc(2022, 1, 1),
                    focusedDay: _focusedDay,
                    lastDay: DateTime.utc(2030, 12, 31),
                    locale: 'ko_KR',
                    eventLoader: _getSpendingByDay,
                    selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        todaySpendings = spendings[dateFormat.format(selectedDay)] ?? [];
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay; // update `_focusedDay` here as well
                      });
                    },
                    calendarBuilders: CalendarBuilders(defaultBuilder: (context, day, focusedDay) {
                      int sum = 0;
                      spendings[dateFormat.format(day)]?.forEach((element) {
                        sum += element.amount;
                      });
                      return Container(
                        child: sum > 0 ? Text("$sum") : Text("${day.day}"),
                      );
                    }),
                  ),
                  ...todaySpendings.map((e) => Text("${e.usage} ${e.amount}")),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  List<Spending> _getSpendingByDay(day) => spendings[day] ?? [];
}
