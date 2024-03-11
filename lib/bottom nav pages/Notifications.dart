import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/components/notify_model.dart'
    as notify; // Import your Notification model with a prefix

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Dummy list of notifications, replace it with your actual data
    List<notify.Notification> notifications = [
      notify.Notification(
        type: notify.NotificationType.like,
        message: "Your post has been liked!",
      ),
      notify.Notification(
        type: notify.NotificationType.follow,
        message: "You have a new follower!",
      ),
      // Add more notifications as needed
    ];

    return Scaffold(
      appBar: Toolbar(title: 'NOTIFICATIONS'),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(notifications[index].message),
            // You can use different icons based on the notification type
            leading: Icon(
              notifications[index].type == notify.NotificationType.like
                  ? Icons.favorite
                  : Icons.person_add,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
