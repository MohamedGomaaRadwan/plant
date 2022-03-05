import 'package:equatable/equatable.dart';

import '../../models/notification_payload.dart';

abstract class NotificationUpdatesState extends Equatable {
  const NotificationUpdatesState();

  @override
  List<Object> get props => <Object>[];
}

class NotificationUpdatesStateUninitialized extends NotificationUpdatesState {}

class NotificationUpdatesStateLoading extends NotificationUpdatesState {}

class NotificationUpdatesStateUpdated extends NotificationUpdatesState {
  const NotificationUpdatesStateUpdated({required this.notificationPayload});
  final NotificationPayload notificationPayload;

  @override
  List<Object> get props => <Object>[];
}

class NotificationUpdatesStateFailed extends NotificationUpdatesState {
  const NotificationUpdatesStateFailed({required this.error});
  final String? error;

  @override
  List<Object> get props => <Object>[error!];
}
