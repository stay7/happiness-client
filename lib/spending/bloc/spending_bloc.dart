import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:happiness_client/repository/spending_repository.dart';
import 'package:happiness_client/type/spending.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'spending_event.dart';

part 'spending_state.dart';

class SpendingBloc extends Bloc<SpendingEvent, SpendingState> {
  final SpendingRepository spendingRepository;

  SpendingBloc({required this.spendingRepository}) : super(SpendingInitial()) {
    on<SpendingRequested>(_onSpendingRequeted);
  }

  void _onSpendingRequeted(SpendingEvent event, Emitter<SpendingState> emit) async {
    emit(SpendingLoading());

    // await spendingRepository.getSpending();
    final spendings = <Spending>[];
    spendings.add(const Spending(id: 1, usage: "다이소", date: "20221112", amount: 10000, currency: "WON"));
    spendings.add(const Spending(id: 2, usage: "다이소", date: "20221112", amount: 5000, currency: "WON"));
    spendings.add(const Spending(id: 3, usage: "홈플러스", date: "20221113", amount: 1000, currency: "WON"));

    emit(SpendingLoaded(spendings: spendings));
  }
}
