import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:figma_prototype/function/functions.dart';
import 'package:figma_prototype/mock_data/user.dart';

class SmallAvatarWithUsernameAndName extends StatelessWidget {
  const SmallAvatarWithUsernameAndName({
    Key? key,
    required this.user,
    this.labelColor = Colors.black,
  }) : super(key: key);
  final Color labelColor;
  final User user;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 28.h,
          width: 28.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage(user.imageUrl), fit: BoxFit.contain),
          ),
        ),
        addHorizontal(8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: labelColor),
            ),
            Text(
              user.userName,
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: labelColor),
            )
          ],
        )
      ],
    );
  }
}
