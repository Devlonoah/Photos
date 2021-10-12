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
