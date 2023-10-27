import 'package:app_with_apps/core/constants/exports/exports.dart';
import 'package:app_with_apps/interface/screens/common/screen.dart';
import 'package:app_with_apps/interface/screens/appsList.dart';
import 'package:app_with_apps/interface/screens/start/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String apps = '/apps_screen';
  static const String screen = '/screen';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: (_) => const SplashScreen(),
        apps: (_) => const Apps(),
        screen: (_) => const Screen(),
      };
}
