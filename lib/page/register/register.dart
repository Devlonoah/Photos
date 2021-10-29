import '../../constants.dart';
import '../../widget/text_input.dart';
import '../../widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../function/functions.dart';

class RegisterPage extends StatelessWidget {
  static String id = 'RegisterPage';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegisterPageBody();
  }
}

class RegisterPageBody extends StatelessWidget {
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
              'Register',
              style: TextStyle(fontSize: 36.sp, fontWeight: FontWeight.w400),
            ),
            addVerticalSpace(32),
            TextInput(hintText: 'Email'),
            addVerticalSpace(16),
            TextInput(hintText: 'Password'),
            addVerticalSpace(16),
            Button(
              bgColor: COLOR_BLACK,
              label: 'NEXT',
              labelColor: COLOR_WHITE,
              hasCustomSize: true,
              buttonSize: Size(343.w, 52.h),
              onPress: () {},
            )
          ],
        ),
      ),
    ));
  }
}
