import 'package:figma_prototype/page/display_manager/display_manager.dart';
import 'package:figma_prototype/page/login/login.dart';
import 'package:figma_prototype/page/register/register.dart';
import 'package:figma_prototype/page/storyview/story_view.dart';
import 'package:figma_prototype/page/welcome/welcome.dart';

final appRoutes = {
  WelcomePage.id: (context) => WelcomePage(),
  LoginPage.id: (context) => LoginPage(),
  RegisterPage.id: (context) => RegisterPage(),
  DisplayManager.id: (context) => DisplayManager(),
  StoryView.id: (context) => StoryView()
};
