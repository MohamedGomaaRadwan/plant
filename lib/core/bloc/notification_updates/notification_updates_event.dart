import 'package:equatable/equatable.dart';

import '../../models/notification_payload.dart';

abstract class NotificationUpdatesEvent extends Equatable {
  const NotificationUpdatesEvent();

  @override
  List<Object> get props => <Object>[];
}

class NotificationUpdatesEventNotify extends NotificationUpdatesEvent {
  const NotificationUpdatesEventNotify({required this.notificationPayload});
  final NotificationPayload notificationPayload;

  @override
  List<Object> get props => <Object>[notificationPayload];
}
