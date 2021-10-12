import 'package:figma_prototype/page/chat/chat.dart';
import 'package:figma_prototype/page/profile/profile.dart';
import 'package:figma_prototype/page/search/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:figma_prototype/constants.dart';
import 'package:figma_prototype/cubit/tab_cubit.dart';
import 'package:figma_prototype/page/home/home.dart';

class DisplayManager extends StatelessWidget {
  static String id = 'DisplayManager';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavs(),
      body: BlocBuilder<TabCubit, TabState>(
        builder: (context, state) {
          return screenList[state.index];
        },
      ),
    );
  }
}

final screenList = [
  Home(),
  SearchPage(),
  Scaffold(),
  ChatPage(),
  ProfilePage()
];

class BottomNavs extends StatelessWidget {
  const BottomNavs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.0.w),
      child: Container(
        height: 83.h,
        width: 375.w,
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade300))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomBarIcon(
              icon: Icons.home_outlined,
              onTap: () => BlocProvider.of<TabCubit>(context).tabChanged(0),
            ),
            BottomBarIcon(
                icon: Icons.search,
                onTap: () => BlocProvider.of<TabCubit>(context).tabChanged(1)),
            MiddleRedButton(),
            BottomBarIcon(
                icon: Icons.chat_bubble_outline,
                onTap: () => BlocProvider.of<TabCubit>(context).tabChanged(3)),
            BottomBarIcon(
                icon: Icons.person_outline,
                onTap: () => BlocProvider.of<TabCubit>(context).tabChanged(4)),
          ],
        ),
      ),
    );
  }
}

class MiddleRedButton extends StatelessWidget {
  const MiddleRedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40.h,
        width: 70.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: COLOR_BLACK,
          borderRadius: BorderRadius.circular(20.r),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [0.08, 0.9142],
            colors: [
              Color(0xFFFF4D00),
              Color(0xFFFF00D6),
            ],
          ),
        ),
        child: Icon(
          Icons.add,
          size: 25.r,
          color: COLOR_WHITE,
        ),
      ),
    );
  }
}

class BottomBarIcon extends StatelessWidget {
  const BottomBarIcon({
    Key? key,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final IconData? icon;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 40.h,
          width: 40.w,
          child: SizedBox(width: 15.56.h, height: 14.06.h, child: Icon(icon))),
    );
  }
}
