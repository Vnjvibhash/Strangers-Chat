import 'package:strangerschat/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  bio: 'Move over “I Love You”. “Salary Credited” is the most powerful word now.',
  imageUrl: 'assets/images/vivek.png',
);

// USERS
final User vivek = User(
  id: 1,
  name: 'Vivek',
  bio: 'Move over “I Love You”. “Salary Credited” is the most powerful word now.',
  imageUrl: 'assets/images/vivek.png',
);
final User amarjeet = User(
  id: 2,
  name: 'Amarjeet',
  bio: 'The only time my job is bearable is when I am vacationing',
  imageUrl: 'assets/images/amarjeetkr.png',
);
final User rishabh = User(
  id: 3,
  name: 'Rishabh',
  bio: 'At the day’s end, I am grateful that my blessings outnumber my problems. ',
  imageUrl: 'assets/images/rishabh.png',
);
final User aradhana = User(
  id: 4,
  name: 'Aradhana',
  bio: 'There is no remote control for life. You have to get up if you want the channel changed.',
  imageUrl: 'assets/images/aradhana.png',
);
final User olivia = User(
  id: 5,
  name: 'Olivia',
  bio: 'Move over “I Love You”. “Salary Credited” is the most powerful word now.',
  imageUrl: 'assets/images/olivia.png',
);
final User abhishek = User(
  id: 6,
  name: 'Abhishek',
  bio: 'Make sure you are perfect before judging me',
  imageUrl: 'assets/images/abhishek.png',
);
final User vivekajee = User(
  id: 7,
  name: 'Viveka Jee',
  bio: 'Do not squander your opportunities for achieving temporary comfort.',
  imageUrl: 'assets/images/vivekajee.png',
);
final User sarfaraj = User(
  id: 8,
  name: 'Sarfaraj',
  bio: 'Your followers may not always be your fans',
  imageUrl: 'assets/images/sarfaraj.png',
);

// FAVORITE CONTACTS
List<User> favorites = [rishabh, aradhana, vivek, amarjeet, abhishek];
