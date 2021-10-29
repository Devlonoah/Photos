import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';
import '../../function/functions.dart';
import '../../mock_data/user.dart';
import '../../widget/text_input.dart';
import '../../widget/widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchBody();
  }
}

class SearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addVerticalSpace(76),
              Text(
                'Search',
                style: kkHeaderTextStyle,
              ),
              addVerticalSpace(32),
              TextInput(hintText: 'Search'),
              addVerticalSpace(32),
              Text(
                'ALL RESULT',
                style: subHeaderTextStyle,
              ),
              addVerticalSpace(24),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: searchresult.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 11.w,
                      crossAxisSpacing: 11.w),
                  itemBuilder: (context, index) {
                    return Image.asset(
                      searchresult[index],
                      width: 107.w,
                      height: 107.h,
                      fit: BoxFit.cover,
                    );
                  }),
              addVerticalSpace(32),
              Button(
                  bgColor: COLOR_WHITE,
                  label: 'SEE MORE',
                  labelColor: COLOR_BLACK,
                  hasCustomSize: false),
              addVerticalSpace(32),
            ],
          ),
        ),
      ),
    );
  }
}
