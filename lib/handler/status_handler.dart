import 'status.dart';

//TODO dio interceptor onresponse에서 호출하면 될 듯
class StatusHandler {
  void handle(Status status) {
    switch (statusToAction[status]) {
      case StatusAction.success:
        break;
      case StatusAction.error:
        break;
      default:
        break;
    }
  }
}
