part of 'record_spending_bloc.dart';

@immutable
abstract class RecordSpendingEvent {}

class ChangeSpendingDate extends RecordSpendingEvent {
  ChangeSpendingDate({required this.selectedDate});

  final DateTime selectedDate;
}
