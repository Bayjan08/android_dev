import "package:android_dev/screens/content/post_widget.dart";
import "package:flutter/material.dart";

class HomeTab extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Instagram'),
      ),
      body: ListView.builder(
        itemCount: 10, // Number of posts
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: PostWidget(),
          );
        },
      ),
    );
  }
}
