import 'package:android_dev/screens/home_screen/models/comment_model.dart';
import 'package:android_dev/screens/home_screen/services/post_services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('loadMockData adds 20 unique posts, each with its own comments', () {
    final service = PostServices()..loadMockData();
    expect(service.posts.length, 20);
    expect(service.posts.map((p) => p.description).toSet().length, 20);
    expect(service.posts.every((p) => p.comments.isNotEmpty), isTrue);
    expect(service.stories, isNotEmpty);
  });

  test('commenting affects only that post', () {
    final service = PostServices()..loadMockData();
    final first = service.posts[0].commentCount;
    final second = service.posts[1].commentCount;
    service.commentOnPost(
      service.posts[0],
      const CommentModel(author: 'me', avatarUrl: '', text: 'hi'),
    );
    expect(service.posts[0].commentCount, first + 1);
    expect(service.posts[1].commentCount, second);
  });
}
