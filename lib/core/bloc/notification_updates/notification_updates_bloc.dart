import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../utilities/index.dart';

import 'notification_updates_event.dart';
import 'notification_updates_state.dart';

@singleton
class NotificationUpdatesBloc extends Bloc<NotificationUpdatesEvent, NotificationUpdatesState> {
  NotificationUpdatesBloc(this._logger) : super(NotificationUpdatesStateUninitialized());
  final AppLogger _logger;

  @override
  Stream<NotificationUpdatesState> mapEventToState(NotificationUpdatesEvent event) async* {
    if (event is NotificationUpdatesEventNotify) {
      yield* _notify(event);
    }
  }

  Stream<NotificationUpdatesState> _notify(NotificationUpdatesEventNotify event) async* {
    yield NotificationUpdatesStateLoading();
    yield NotificationUpdatesStateUpdated(notificationPayload: event.notificationPayload);
  }
}
