import 'dart:async';

import 'package:happiness_client/datasource/remote/retrofit/spending_client.dart';

class SpendingRepository {
  FutureOr<void> getSpending() {}

  FutureOr<void> recordSpending() {}

  FutureOr<void> deleteSpending() {}
}

class SpendingRepositoryImpl implements SpendingRepository {
  final SpendingClient spendingClient;

  SpendingRepositoryImpl({required this.spendingClient});

  @override
  FutureOr<void> getSpending() {
    // TODO: implement getSpending
    throw UnimplementedError();
  }

  @override
  FutureOr<void> recordSpending() {
    // TODO: implement recordSpending
    throw UnimplementedError();
  }

  @override
  FutureOr<void> deleteSpending() {
    // TODO: implement deleteSpending
    throw UnimplementedError();
  }
}
