enum NotificationType {
  like,
  follow,
  // Add more types as needed
}

class Notification {
  final NotificationType type;
  final String message;

  Notification({
    required this.type,
    required this.message,
  });
}
