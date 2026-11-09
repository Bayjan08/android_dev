import 'package:android_dev/screens/content/comment_widget.dart';
import 'package:android_dev/screens/home_screen/models/comment_model.dart';
import 'package:android_dev/screens/home_screen/models/post_model.dart';
import 'package:flutter/material.dart';

class CommentsSheet extends StatefulWidget {
  final PostModel post;
  final VoidCallback onChanged;
  const CommentsSheet({super.key, required this.post, required this.onChanged});

  @override
  State<CommentsSheet> createState() => _CommentsSheetState();
}

class _CommentsSheetState extends State<CommentsSheet> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _send() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    setState(() {
      widget.post.addComment(CommentModel(
        author: 'me',
        avatarUrl: 'https://i.pravatar.cc/150?img=12',
        text: text,
      ));
      _controller.clear();
    });
    widget.onChanged();
  }

  @override
  Widget build(BuildContext context) {
    final comments = widget.post.comments;
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: 400,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text('Comments',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            Expanded(
              child: comments.isEmpty
                  ? const Center(child: Text('No comments yet'))
                  : ListView.builder(
                      itemCount: comments.length,
                      itemBuilder: (_, i) => CommentWidget(comment: comments[i]),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Add a comment...',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  IconButton(icon: const Icon(Icons.send), onPressed: _send),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
