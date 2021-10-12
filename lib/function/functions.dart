import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

addVerticalSpace(double height) {
  return SizedBox(height: height.h);
}

addHorizontal(double width) {
  return SizedBox(width: width.w);
}

/// [Sliver only] add vertical space
addVerticalSpaceSilver(double height) {
  return SliverToBoxAdapter(
    child: SizedBox(height: height.h),
  );
}

/// [Sliver only] add vertical space
addHorizontalSpaceSilver(double width) {
  return SliverToBoxAdapter(
    child: SizedBox(width: width.w),
  );
}
