import 'dart:math';

import '../../constants.dart';
import '../../function/functions.dart';
import '../../mock_data/user.dart';
import '../storyview/story_view.dart';
import '../../widget/small_avatar_with_username+and_name.dart';
import '../../widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            addVerticalSpace(76),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'Discover',
                style: kkHeaderTextStyle,
              ),
            ),
            addVerticalSpace(32),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'WHAT\'S NEW TODAY',
                style: subHeaderTextStyle,
              ),
            ),
            addVerticalSpace(24),
            NewStorySlide(),
            addVerticalSpace(48),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                'BROWSE ALL',
                style: subHeaderTextStyle,
              ),
            ),
            addVerticalSpace(24),
          ]),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: StaggeredGridView.countBuilder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              itemCount: browseList.length,
              itemBuilder: (BuildContext context, int index) {
                final _image = browseList[index];
                return GestureDetector(
                  onTap: () {
                    final random = Random();
                    Navigator.pushNamed(context, StoryView.id,
                        arguments: ScreenArgument(
                            userList[random.nextInt(userList.length)], _image));
                  },
                  child: Container(
                    child: Image.asset(
                      _image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(1, index.isEven ? 1.5 : 1.8),
              mainAxisSpacing: 9.0.h,
              crossAxisSpacing: 9.0.w,
            ),
          ),
          addVerticalSpace(32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Button(
              bgColor: COLOR_WHITE,
              label: 'SEE MORE',
              labelColor: COLOR_BLACK,
              hasCustomSize: true,
              buttonSize: Size(343.w, 52.h),
            ),
          ),
          addVerticalSpace(32),
        ],
      ),
    );
  }
}

class NewStorySlide extends StatelessWidget {
  const NewStorySlide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 387.h,
      child: ListView.builder(
          shrinkWrap: false,
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemCount: storyList.first.user.length,
          itemBuilder: (context, index) {
            var _story = storyList.first;
            var _imagePath = _story.imageUrl[index];

            var _user = _story.user[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: StoryImageAndUserAvatarCard(
                imageUrl: _story.imageUrl[index],
                user: _story.user[index],
                onTap: () => _navigateToStoryView(
                    context,
                    ScreenArgument(
                      _user,
                      _imagePath,
                    )),
              ),
            );
          }),
    );
  }
}

void _navigateToStoryView(BuildContext context, ScreenArgument screenArgument) {
  Navigator.pushNamed(context, StoryView.id, arguments: screenArgument);
}

class StoryImageAndUserAvatarCard extends StatelessWidget {
  const StoryImageAndUserAvatarCard({
    Key? key,
    required this.imageUrl,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  final String imageUrl;
  final User user;

  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // height: 300.h,
              width: 343.w,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          addVerticalSpace(16),
          Container(
              child: SmallAvatarWithUsernameAndName(
            user: user,
          ))
        ],
      ),
    );
  }
}
