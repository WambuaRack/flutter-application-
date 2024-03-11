import 'package:flutter/material.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/components/notify_model.dart' as notify;

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<notify.Notification> notifications = [
      notify.Notification(
        type: notify.NotificationType.like,
        message: "Your post has been liked!",
        //postId: 'postId1', // Replace postId with the actual ID of the post
      ),
      notify.Notification(
        type: notify.NotificationType.follow,
        message: "You have a new follower!",
        //userId: 'userId1', // Replace userId with the actual ID of the follower
      ),
      // Add more notifications as needed
    ];

    return Scaffold(
      appBar: Toolbar(title: 'NOTIFICATIONS'),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the appropriate page based on the notification type
              if (notifications[index].type == notify.NotificationType.like) {
                // Uncomment this line and replace 'postId1' with the actual post ID
                // Navigator.pushNamed(context, '/post/${notifications[index].postId}');
              } else if (notifications[index].type ==
                  notify.NotificationType.follow) {
                // Uncomment this line and replace 'userId1' with the actual user ID
                // Navigator.pushNamed(context, '/user/${notifications[index].userId}');
              }
            },
            child: ListTile(
              title: Text(notifications[index].message),
              leading: Icon(
                notifications[index].type == notify.NotificationType.like
                    ? Icons.favorite
                    : Icons.person_add,
                color: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
