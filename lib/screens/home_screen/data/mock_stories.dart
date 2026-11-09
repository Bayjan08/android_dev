import 'package:android_dev/screens/home_screen/models/story_model.dart';

List<StoryModel> buildMockStories() {
  const names = [
    'aigerim', 'timur', 'dana', 'ruslan', 'aliya',
    'nursultan', 'madina', 'erlan', 'zarina', 'bakyt',
  ];
  return List.generate(
    names.length,
    (i) => StoryModel(
      username: names[i],
      avatarUrl: 'https://i.pravatar.cc/150?img=${i + 1}',
      imageUrl: 'https://picsum.photos/seed/story${i + 1}/400/700',
    ),
  );
}
