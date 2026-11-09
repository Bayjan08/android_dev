import 'package:android_dev/screens/home_screen/data/mock_posts.dart';
import 'package:android_dev/screens/home_screen/data/mock_stories.dart';
import 'package:android_dev/screens/home_screen/models/comment_model.dart';
import 'package:android_dev/screens/home_screen/models/post_model.dart';
import 'package:android_dev/screens/home_screen/models/story_model.dart';

class PostServices {
  final List<PostModel> posts = [];
  final List<StoryModel> stories = [];

  PostServices();

  void addPost(PostModel post) {
    posts.add(post);
  }

  void likePost(PostModel post) {
    post.addLike((post.likeCount ?? 0) + 1);
  }

  void commentOnPost(PostModel post, CommentModel comment) {
    post.addComment(comment);
  }

  void batchAddPosts(List<PostModel> newPosts) {
    posts.addAll(newPosts);
  }

  void batchAddStories(List<StoryModel> newStories) {
    stories.addAll(newStories);
  }

  /// Fills the service with the 20 posts and the stories from the data files.
  void loadMockData() {
    batchAddPosts(buildMockPosts());
    batchAddStories(buildMockStories());
  }
}
