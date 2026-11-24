import 'package:flutter/material.dart';
import 'package:umali/widget/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  static const List<Map<String, Object?>> _posts = [
    {
      'userName': 'Jushell Umali',
      'postContent': 'Building our Flutter social app in soft pink vibes! ✨🌸',
      'date': 'Just now',
      'numOfLikes': 128,
      'hasImage': true,
      'imagePath': null, // Displays clean placeholder when no asset is assigned
    },
    {
      'userName': 'Steve Rogers',
      'postContent': 'I can do this all day! #AvengersAssemble',
      'date': '2 hours ago',
      'numOfLikes': 10,
      'hasImage': false,
      'imagePath': null,
    },
    {
      'userName': 'Tony Stark',
      'postContent': 'I am Iron Man. #GeniusBillionairePlayboyPhilanthropist',
      'date': 'November 24, 2026',
      'numOfLikes': 3000,
      'hasImage': true,
      'imagePath': 'assets/images/iron_man.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        final post = _posts[index];
        return NewsfeedCard(
          userName: post['userName'] as String,
          postContent: post['postContent'] as String,
          date: post['date'] as String,
          numOfLikes: post['numOfLikes'] as int?,
          hasImage: post['hasImage'] as bool?,
          imagePath: post['imagePath'] as String?,
        );
      },
    );
  }
}
