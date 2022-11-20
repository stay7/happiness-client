part of 'spending_bloc.dart';

@immutable
abstract class SpendingState {}

class SpendingInitial extends SpendingState {}

class SpendingLoading extends SpendingState {}

class SpendingLoaded extends SpendingState {
  final List<Spending> spendings;
  late final Map<String, List<Spending>> spendingMap = {};

  SpendingLoaded({required this.spendings}) {
    for (var element in spendings) {
      spendingMap[element.date] = [...?spendingMap[element.date], element];
    }
    print(spendingMap);
  }
}

class SpendingAdding extends SpendingState {

}
