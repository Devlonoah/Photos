import 'dart:math';

class User {
  final String name;
  final String imageUrl;
  final String userName;
  final String userLocation;

  User(this.name, this.imageUrl, this.userName, this.userLocation);
}

class Story {
  final List<User> user;
  final List<String> imageUrl;
  Story({
    required this.user,
    required this.imageUrl,
  });
}

class Chat {
  final String message;
  final User user;
  Chat({
    required this.message,
    required this.user,
  });
}

final defaultUser = User('Pawel Czervinski', 'assets/entry_avatar.png',
    '@Pawel Czervinski', 'TORONTO, CA');
final userList = [
  User('Ridhwan Nordin', 'assets/avatar/avatar-0.png', '@ridzjcob',
      'NEW YORK, US'),
  User('Clem Onojeghuo', 'assets/avatar/avatar-1.png', '@Clemono2',
      'ATLANTA,GE'),
  User('Jon Tyson', 'assets/avatar/avatar-2.png', '@jontyson', 'FLORIDA, US'),
  User('Simon Zhu', 'assets/avatar/avatar-3.png', '@smnzhu', 'KOREA, SE')
];

final chatOnlyUser = [
  User("James", 'assets/avatar/james_avatar.png', '', ''),
  User('Beth Williams', profilePhotos[4], '', ''),
  User("Rev Shawn", profilePhotos[5], '', '')
];

final random = Random();
final storyList = [
  Story(
      user: userList.getRange(0, 4).toList(),
      imageUrl: storyImageList.getRange(0, 4).toList())
];
final storyImageList = [
  'assets/story/story1.png',
  'assets/story/story2.png',
  'assets/story/story3.png',
  'assets/story/story4.png',
];

class ScreenArgument {
  final User user;
  final String imagePath;

  ScreenArgument(this.user, this.imagePath);
}

final browseList = [
  'assets/browse/1.png',
  'assets/browse/2.png',
  'assets/browse/3.png',
  'assets/browse/4.png',
  'assets/browse/5.png',
  'assets/browse/6.png',
  'assets/browse/7.png',
  'assets/browse/8.png',
  'assets/browse/9.png',
  'assets/browse/10.png',
];

final searchresult = [
  'assets/search/s1.png',
  'assets/search/s2.png',
  'assets/search/s3.png',
  'assets/search/s4.png',
  'assets/search/s5.png',
  'assets/search/s6.png',
  'assets/search/s7.png',
  'assets/search/s8.png',
  'assets/search/s9.png',
  'assets/search/s10.png',
  'assets/search/s11.png',
  'assets/search/s12.png',
  'assets/search/s13.png',
  'assets/search/s14.png',
  'assets/search/s15.png',
];

final profilePhotos = [
  'assets/profile/1.png',
  'assets/profile/2.png',
  'assets/profile/3.png',
  'assets/profile/4.png',
  'assets/profile/5.png',
  'assets/profile/6.png',
];

final List<Chat> chats = [
  Chat(message: 'Thank you! That was very helpful!', user: chatOnlyUser[0]),
  Chat(
      message:
          "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...",
      user: chatOnlyUser[1]),
  Chat(
      message:
          "Wanted to ask if you’re available for a portrait shoot next week.",
      user: chatOnlyUser[2])
];
