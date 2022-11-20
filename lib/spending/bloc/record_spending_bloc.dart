import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../repository/spending_repository.dart';

part 'record_spending_event.dart';

part 'record_spending_state.dart';

class RecordSpendingBloc extends Bloc<RecordSpendingEvent, RecordSpendingState> {
  final SpendingRepository spendingRepository;
  DateTime selectedDate;
  int? amount;
  String? pay;
  String? category;
  String? subCategory;
  List<String>? tags;

  RecordSpendingBloc({required this.selectedDate, required this.spendingRepository}) : super(RecordSpendingInitial()) {
    on<ChangeSpendingDate>(_onRecordSpendingDateChanged);
  }

  void _onRecordSpendingDateChanged(ChangeSpendingDate event, Emitter<RecordSpendingState> emit) {
    emit(RecordSpendingChecked(
      date: event.selectedDate,
      amount: amount,
      pay: pay,
      category: category,
      subCategory: subCategory,
      tags: tags
    ));
  }
}
