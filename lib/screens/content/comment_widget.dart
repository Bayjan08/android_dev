import 'package:android_dev/screens/content/avatar.dart';
import 'package:android_dev/screens/home_screen/models/comment_model.dart';
import 'package:flutter/material.dart';

class CommentWidget extends StatelessWidget {
  final CommentModel comment;
  const CommentWidget({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(imageUrl: comment.avatarUrl, radius: 18),
      title: Text(
        comment.author,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: Text(comment.text),
    );
  }
}
