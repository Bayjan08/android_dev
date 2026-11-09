import 'package:android_dev/screens/home_screen/models/comment_model.dart';
import 'package:android_dev/screens/home_screen/models/post_model.dart';

const _avatarIds = {
  'aigerim': 1, 'timur': 2, 'dana': 3, 'ruslan': 4, 'aliya': 5,
  'nursultan': 6, 'madina': 7, 'erlan': 8, 'zarina': 9, 'bakyt': 10,
};

CommentModel _c(String author, String text) => CommentModel(
      author: author,
      avatarUrl: 'https://i.pravatar.cc/150?img=${_avatarIds[author]}',
      text: text,
    );

/// 20 unique posts, each with its own comments.
List<PostModel> buildMockPosts() => [
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post1/600/400',
        description: 'Morning coffee on the balcony before the lecture.',
        likeCount: 124,
        comments: [
          _c('aigerim', 'Looks so cozy!'),
          _c('timur', 'Which cafe beans are these?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post2/600/400',
        description: 'First time hiking in Ala-Archa, the view is unreal.',
        likeCount: 342,
        comments: [
          _c('dana', 'Take me next time!'),
          _c('ruslan', 'Great shot.'),
          _c('aliya', 'Is the trail hard?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post3/600/400',
        description: 'Finished the Kotlin lab, now moving to Flutter.',
        likeCount: 87,
        comments: [
          _c('nursultan', 'Flutter is way easier :)'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post4/600/400',
        description: 'Sunset over Bishkek from the roof.',
        likeCount: 510,
        comments: [
          _c('madina', 'Golden hour wins again.'),
          _c('erlan', 'Where exactly is this?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post5/600/400',
        description: 'My cat decided my keyboard is her bed.',
        likeCount: 903,
        comments: [
          _c('zarina', 'Classic cat move.'),
          _c('bakyt', 'Name?'),
          _c('aigerim', 'So fluffy!'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post6/600/400',
        description: "Homemade plov, grandma's recipe.",
        likeCount: 276,
        comments: [
          _c('timur', 'Save me a plate!'),
          _c('dana', 'Recipe please'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post7/600/400',
        description: 'New sneakers just dropped, could not resist.',
        likeCount: 198,
        comments: [
          _c('ruslan', 'Fire.'),
          _c('aliya', 'Size 42?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post8/600/400',
        description: 'Study session at the library, exams are close.',
        likeCount: 64,
        comments: [
          _c('nursultan', 'Good luck!'),
          _c('madina', 'Same here...'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post9/600/400',
        description: 'Weekend trip to Issyk-Kul with friends.',
        likeCount: 688,
        comments: [
          _c('erlan', 'Best summer ever.'),
          _c('zarina', 'Water looks so clear'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post10/600/400',
        description: 'Sketching the app UI before writing any code.',
        likeCount: 150,
        comments: [
          _c('bakyt', 'Planning first, smart.'),
          _c('aigerim', 'Share the sketch?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post11/600/400',
        description: 'Rainy day, rainy mood, good playlist.',
        likeCount: 99,
        comments: [
          _c('timur', 'Send the playlist'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post12/600/400',
        description: 'Fresh bread from the corner bakery.',
        likeCount: 231,
        comments: [
          _c('dana', 'The smell!'),
          _c('ruslan', 'Still warm?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post13/600/400',
        description: 'Learned ListView.builder today, scrolling feels smooth.',
        likeCount: 73,
        comments: [
          _c('aliya', 'Nice progress'),
          _c('nursultan', 'Add horizontal too'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post14/600/400',
        description: 'Night city lights from the bus window.',
        likeCount: 417,
        comments: [
          _c('madina', 'So aesthetic.'),
          _c('erlan', 'Long exposure?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post15/600/400',
        description: 'Birthday cake for my little brother.',
        likeCount: 365,
        comments: [
          _c('zarina', 'Happy birthday to him!'),
          _c('bakyt', 'Chocolate?'),
          _c('aigerim', 'Yum'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post16/600/400',
        description: 'Cycling along the river this morning.',
        likeCount: 142,
        comments: [
          _c('timur', 'Respect, I overslept'),
          _c('dana', 'Which route?'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post17/600/400',
        description: 'Board game night, I lost again.',
        likeCount: 58,
        comments: [
          _c('ruslan', 'Rematch Friday'),
          _c('aliya', 'Haha'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post18/600/400',
        description: 'Snow finally reached the mountains.',
        likeCount: 589,
        comments: [
          _c('nursultan', 'Time to ski!'),
          _c('madina', 'Beautiful'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post19/600/400',
        description: 'Bug fixed after three hours: a missing semicolon.',
        likeCount: 311,
        comments: [
          _c('erlan', 'Every developer ever'),
          _c('zarina', 'Pain.'),
        ],
      ),
      PostModel(
        imageUrl: 'https://picsum.photos/seed/post20/600/400',
        description: 'Lab done, ready to show it on Monday.',
        likeCount: 205,
        comments: [
          _c('bakyt', 'Good luck!'),
          _c('aigerim', 'You got this'),
          _c('timur', 'Nice'),
        ],
      ),
    ];
