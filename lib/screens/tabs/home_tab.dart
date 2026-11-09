import "package:android_dev/screens/content/post_widget.dart";
import "package:android_dev/screens/content/story_widget.dart";
import "package:android_dev/screens/home_screen/services/post_services.dart";
import "package:flutter/material.dart";

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final PostServices postServices = PostServices()..loadMockData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Instagram'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 110,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: postServices.stories.length,
              itemBuilder: (context, index) =>
                  StoryWidget(story: postServices.stories[index]),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: postServices.posts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: PostWidget(post: postServices.posts[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
