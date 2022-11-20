import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happiness_client/spending/bloc/record_spending_bloc.dart';
import 'package:happiness_client/widget/thousands_separator_input_formatter.dart';
import 'package:intl/intl.dart';

class RecordSpendingScreenArgument {
  final DateTime initDate;

  RecordSpendingScreenArgument({required this.initDate});
}

class RecordSpendingScreen extends StatefulWidget {
  static const routeName = "RecordSpending";

  const RecordSpendingScreen({Key? key, required this.initDate}) : super(key: key);

  final DateTime initDate;

  @override
  State<RecordSpendingScreen> createState() => _RecordSpendingScreenState();
}

class _RecordSpendingScreenState extends State<RecordSpendingScreen> {
  late TextEditingController _controller;
  bool showNextButton = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(_updateShowVisible);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordSpendingBloc, RecordSpendingState>(
      builder: (context, state) {
        // final bloc = context.read<RecordSpendingBloc>();
        final formatter = DateFormat("yyyy.MM.dd EEE요일");
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: CupertinoButton(
              child: const Icon(CupertinoIcons.clear),
              onPressed: () => Navigator.pop(context),
            ),
            middle: Text(formatter.format(context
                .read<RecordSpendingBloc>()
                .selectedDate)),
          ),
          child: SafeArea(
            left: true,
            right: true,
            minimum: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: CupertinoTextField(
                          keyboardType: TextInputType.number,
                          controller: _controller,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          prefix: const Text("₩"),
                          suffix: const Text("원"),
                          textAlign: TextAlign.right,
                          inputFormatters: [ThousandsSeparatorInputFormatter()],
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: showNextButton,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('다음'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40),
                      backgroundColor: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _updateShowVisible() {
    setState(() {
      showNextButton = _controller.text.isNotEmpty;
    });
  }
}
