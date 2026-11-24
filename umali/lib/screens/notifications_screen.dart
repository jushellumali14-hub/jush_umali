import 'package:flutter/material.dart';
import 'package:umali/widget/notification.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NotificationWidget(
          name: 'Steve Rogers',
          post: 'I can do this all day!',
          description: 'Liked your post',
        ),
        NotificationWidget(
          name: 'Tony Stark',
          post: 'I am Iron Man.',
          description: 'Commented on your post',
        ),
        NotificationWidget(
          name: 'Natasha Romanoff',
          post: 'Avengers Assemble',
          description: 'Shared your post',
        ),
      ],
    );
  }
}
