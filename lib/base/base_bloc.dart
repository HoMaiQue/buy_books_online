import 'dart:async';

import 'package:buy_books_online/base/base_event.dart';

abstract class BaseBloc {
  final StreamController<BaseEvent> _eventStreamController =
      StreamController<BaseEvent>();
  Sink<BaseEvent> get event => _eventStreamController.sink;

  BaseBloc() {
    _eventStreamController.stream.listen((event) {
      if (event is! BaseEvent) {
        throw Exception("invalid event");
      }

      dispatchEvent(event);
    });
  }
  void dispatchEvent(BaseEvent event);
  void dispose() {
    _eventStreamController.close();
  }
}
