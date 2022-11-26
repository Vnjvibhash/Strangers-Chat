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
  imageUrl: 'assets/images/vivek.png',
);

// USERS
final User vivek = User(
  id: 1,
  name: 'Vivek',
  imageUrl: 'assets/images/vivek.png',
);
final User amarjeet = User(
  id: 2,
  name: 'Amarjeet',
  imageUrl: 'assets/images/amarjeetkr.png',
);
final User rishabh = User(
  id: 3,
  name: 'Rishabh',
  imageUrl: 'assets/images/rishabh.png',
);
final User aradhana = User(
  id: 4,
  name: 'Aradhana',
  imageUrl: 'assets/images/aradhana.png',
);
final User olivia = User(
  id: 5,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.png',
);
final User abhishek = User(
  id: 6,
  name: 'Abhishek',
  imageUrl: 'assets/images/abhishek.png',
);
final User vivekajee = User(
  id: 7,
  name: 'Viveka Jee',
  imageUrl: 'assets/images/vivekajee.png',
);
final User sarfaraj = User(
  id: 8,
  name: 'Sarfaraj',
  imageUrl: 'assets/images/sarfaraj.png',
);

// FAVORITE CONTACTS
List<User> favorites = [rishabh, aradhana, vivek, amarjeet, abhishek];
