import 'package:figma_prototype/page/welcome/welcome.dart';
import 'package:figma_prototype/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Figma Proto',
        theme: ThemeData.light(),
        routes: appRoutes,
        initialRoute: WelcomePage.id,
        // home: WelcomePage(),
      ),
    );
  }
}
