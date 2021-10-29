import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cubit/tab_cubit.dart';
import 'page/welcome/welcome.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => BlocProvider(
        create: (context) => TabCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Figma Proto',
          theme: ThemeData.light(),
          routes: appRoutes,
          initialRoute: WelcomePage.id,
          // home: WelcomePage(),
        ),
      ),
    );
  }
}
