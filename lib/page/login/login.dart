import '../../constants.dart';
import '../display_manager/display_manager.dart';
import '../../widget/text_input.dart';
import '../../widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../function/functions.dart';

class LoginPage extends StatelessWidget {
  static String id = 'LoginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginPageBody();
  }
}

class LoginPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            addVerticalSpace(60),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset('assets/navigation_icon/nab_back.png',
                    height: 11.35.h, width: 12.21.w),
              ),
            ),
            addVerticalSpace(32.65),
            Text(
              'Log in',
              style: TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w400),
            ),
            addVerticalSpace(32),
            TextInput(hintText: 'Email'),
            addVerticalSpace(16),
            TextInput(hintText: 'Password'),
            addVerticalSpace(16),
            Button(
              bgColor: COLOR_BLACK,
              label: 'LOG IN',
              labelColor: COLOR_WHITE,
              hasCustomSize: true,
              buttonSize: Size(343.w, 52.h),
              onPress: () => Navigator.pushNamed(context, DisplayManager.id),
            )
          ],
        ),
      ),
    ));
  }
}
