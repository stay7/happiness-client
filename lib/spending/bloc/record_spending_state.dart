part of 'record_spending_bloc.dart';

@immutable
abstract class RecordSpendingState {}

class RecordSpendingInitial extends RecordSpendingState {}

class RecordSpendingChecked extends RecordSpendingState {
  final DateTime date;
  final int? amount;
  final String? pay;
  final String? category;
  final String? subCategory;
  final List<String>? tags;

  RecordSpendingChecked({required this.date, this.amount, this.pay, this.category, this.subCategory, this.tags});
}
