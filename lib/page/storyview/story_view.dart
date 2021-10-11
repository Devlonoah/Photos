import 'package:figma_prototype/constants.dart';
import 'package:figma_prototype/mock_data/user.dart';
import 'package:figma_prototype/widget/small_avatar_with_username+and_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoryView extends StatelessWidget {
  static String id = 'StoryView';
  const StoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _args = (ModalRoute.of(context)!.settings.arguments) as ScreenArgument;
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 812.h,
              width: 375.w,
              child: Image.asset(
                _args.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              child: Container(
            height: 300.h,
            width: 375.w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color(0xFF000000),
                  Color(0x00C4C4C4),
                ])),
          )),
          Positioned(
              top: 44.h,
              right: 14.w,
              left: 16.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SmallAvatarWithUsernameAndName(
                      user: _args.user, labelColor: COLOR_WHITE),
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        CupertinoIcons.clear,
                        color: COLOR_WHITE,
                      ),
                      padding: EdgeInsets.zero)
                ],
              )),
        ],
      ),
    );
  }
}
