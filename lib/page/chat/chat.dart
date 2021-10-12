import 'package:figma_prototype/constants.dart';
import 'package:figma_prototype/function/functions.dart';
import 'package:figma_prototype/mock_data/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChatPageBody();
  }
}

class ChatPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          _navBar(),
          addVerticalSpaceSilver(16),
          SliverToBoxAdapter(
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, _) {
                    final _chat = chats[_];
                    return _ChatTile(chat: _chat);
                  },
                  separatorBuilder: (context, _) {
                    return Divider();
                  },
                  itemCount: chats.length)),
        ],
      ),
    );
  }

  CupertinoSliverNavigationBar _navBar() {
    return CupertinoSliverNavigationBar(
      automaticallyImplyLeading: false,
      largeTitle: Center(
          child: Text(
        'Chat',
        style: TextStyle(fontSize: 17.sp),
      )),
    );
  }
}

class _ChatTile extends StatelessWidget {
  const _ChatTile({
    Key? key,
    required this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 64.h,
            width: 64.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CupertinoColors.extraLightBackgroundGray,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    chat.user.imageUrl,
                  ),
                )),
          ),
          addHorizontal(16),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chat.user.name,
                style: subHeaderTextStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              addVerticalSpace(6),
              SizedBox(
                width: 263.w,
                height: 36.h,
                child: Text(
                  chat.message,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
