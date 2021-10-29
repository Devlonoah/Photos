import 'page/display_manager/display_manager.dart';
import 'page/login/login.dart';
import 'page/register/register.dart';
import 'page/storyview/story_view.dart';
import 'page/welcome/welcome.dart';

final appRoutes = {
  WelcomePage.id: (context) => WelcomePage(),
  LoginPage.id: (context) => LoginPage(),
  RegisterPage.id: (context) => RegisterPage(),
  DisplayManager.id: (context) => DisplayManager(),
  StoryView.id: (context) => StoryView()
};
