import 'package:flutter/material.dart';
import 'package:umali/widget/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  static const List<Map<String, Object?>> posts = [
    {
      'userName': 'Jushell Umali',
      'date': 'November 27, 2026',
      'postContent':
          'Welcome to BlushNet! Building scrollable list widgets in Flutter.',
      'numOfLikes': 128,
      'hasImage': true,
      'imagePath': 'assets/images/jush.jpg',
    },
    {
      'userName': 'Shane Rose Estacio',
      'date': '2 hours ago',
      'postContent': 'Studying for Mobile Programming with the group!',
      'numOfLikes': 10,
      'hasImage': true,
      'imagePath': 'assets/images/shane.jpg',
    },
    {
      'userName': 'Ica Guevarra',
      'date': 'November 24, 2026',
      'postContent': 'Coding late night with coffee and pastel themes.',
      'numOfLikes': 3000,
      'hasImage': true,
      'imagePath': 'assets/images/ica.jpg',
    },
    {
      'userName': 'Tanya Febrero',
      'date': 'November 23, 2026',
      'postContent':
          'Happy weekend everyone! Catching up on our Flutter lab activity.',
      'numOfLikes': 145,
      'hasImage': true,
      'imagePath': 'assets/images/tanya.jpg',
    },
    {
      'userName': 'Jushell Umali',
      'date': 'Yesterday',
      'postContent':
          'Finished a new Flutter layout and shared it with the team.',
      'numOfLikes': 82,
      'hasImage': false,
      'imagePath': null,
    },
    {
      'userName': 'Shane Rose Estacio',
      'date': 'Yesterday',
      'postContent': 'Reviewing our project requirements before submission.',
      'numOfLikes': 64,
      'hasImage': false,
      'imagePath': null,
    },
    {
      'userName': 'Ica Guevarra',
      'date': 'November 21, 2026',
      'postContent':
          'Designing a calmer mobile interface with a soft color palette.',
      'numOfLikes': 210,
      'hasImage': false,
      'imagePath': null,
    },
    {
      'userName': 'Tanya Febrero',
      'date': 'November 20, 2026',
      'postContent':
          'A productive study session with our Mobile Programming group.',
      'numOfLikes': 96,
      'hasImage': false,
      'imagePath': null,
    },
    {
      'userName': 'Jushell Umali',
      'date': 'November 19, 2026',
      'postContent': 'Exploring reusable widgets and cleaner state management.',
      'numOfLikes': 173,
      'hasImage': false,
      'imagePath': null,
    },
    {
      'userName': 'Shane Rose Estacio',
      'date': 'November 18, 2026',
      'postContent': 'Getting ready for the next mobile app demo.',
      'numOfLikes': 58,
      'hasImage': false,
      'imagePath': null,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return NewsfeedCard(
          userName: post['userName'] as String,
          date: post['date'] as String,
          postContent: post['postContent'] as String,
          numOfLikes: post['numOfLikes'] as int,
          hasImage: post['hasImage'] as bool,
          imagePath: post['imagePath'] as String?,
        );
      },
    );
  }
}
