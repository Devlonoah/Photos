import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../constants.dart';
import '../../function/functions.dart';
import '../../mock_data/user.dart';
import '../../widget/widgets.dart';

class ProfilePage extends StatelessWidget {
  static String id = 'ProfilePage';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfilePageBody();
  }
}

class ProfilePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            addVerticalSpace(76),
            _avatar(),
            addVerticalSpace(32),
            _nameAndLocation(),
            Button(
              bgColor: COLOR_BLACK,
              label: 'FOLLOW JANE',
              labelColor: COLOR_WHITE,
              hasCustomSize: false,
            ),
            addVerticalSpace(16),
            Button(
              bgColor: COLOR_WHITE,
              label: 'MESSAGE',
              labelColor: COLOR_BLACK,
              hasCustomSize: false,
            ),
            addVerticalSpace(32),
            _gridPhotos(),
            addVerticalSpace(32),
            Button(
              bgColor: COLOR_WHITE,
              label: 'SEE MORE',
              labelColor: COLOR_BLACK,
              hasCustomSize: false,
            ),
            addVerticalSpace(32),
          ]),
        ),
      ),
    );
  }

  StaggeredGridView _gridPhotos() {
    return StaggeredGridView.countBuilder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      itemCount: profilePhotos.length,
      itemBuilder: (BuildContext context, int index) {
        final _photo = profilePhotos[index];
        return GestureDetector(
          onTap: () {
            // final random = Random();
            // Navigator.pushNamed(context, StoryView.id,
            //     arguments: ScreenArgument(
            //         userList[random.nextInt(userList.length)], _image));
          },
          child: Container(
            child: Image.asset(
              _photo,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(1, index.isEven ? 1.5 : 1.8),
      mainAxisSpacing: 9.0.h,
      crossAxisSpacing: 9.0.w,
    );
  }

  Column _nameAndLocation() {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        'Jane',
        style: kkHeaderTextStyle,
      ),
      addVerticalSpace(16),
      Text('SAN FRANCISCO, CA', style: subHeaderTextStyle),
      addVerticalSpace(32)
    ]);
  }

  Container _avatar() {
    return Container(
      height: 128.h,
      width: 128.w,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      child: Image.asset('assets/profile_avatar.png',
          fit: BoxFit.contain, height: 128.h, width: 128.w),
    );
  }
}
