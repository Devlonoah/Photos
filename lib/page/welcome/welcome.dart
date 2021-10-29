import '../../mock_data/user.dart';
import '../login/login.dart';
import '../register/register.dart';
import '../../widget/small_avatar_with_username+and_name.dart';
import '../../widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../function/functions.dart';

class WelcomePage extends StatelessWidget {
  static String id = 'WelcomePage';
  @override
  Widget build(BuildContext context) {
    return WelcomePageBody();
  }
}

class WelcomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Image.asset('assets/bg.png',
                  width: 375.w, height: 707.h, fit: BoxFit.cover),
              Positioned(
                bottom: 26.0.h,
                left: 16.w,
                right: 220.w,
                child: SmallAvatarWithUsernameAndName(user: defaultUser),
              ),
              Positioned(
                top: 307.h,
                bottom: 346.h,
                right: 85.w,
                left: 84.w,
                child: Image.asset(
                  'assets/logo.png',
                  height: 52.h,
                  width: 206.w,
                ),
              )
            ],
          ),
          addVerticalSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                  label: 'LOGIN',
                  labelColor: COLOR_BLACK,
                  bgColor: COLOR_WHITE,
                  hasCustomSize: false,
                  onPress: () {
                    Navigator.pushNamed(context, LoginPage.id);
                  }),
              addHorizontal(9),
              Button(
                label: 'REGISTER',
                labelColor: COLOR_WHITE,
                bgColor: COLOR_BLACK,
                hasCustomSize: false,
                onPress: () => Navigator.pushNamed(context, RegisterPage.id),
              )
            ],
          )
        ],
      ),
    );
  }
}
