// import 'package:mps_staff/exports/exports.dart';

// // ignore_for_file: must_be_immutable
// class Skillet extends StatelessWidget {
//   Skillet({super.key});

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();
//   String currentRoute = GetIt.I.get<Connector>().currentRoute;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Navigator(
//         key: navigatorKey,
//         initialRoute: currentRoute,
//         onGenerateRoute: (routeSetting) => PageRouteBuilder(
//           pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!),
//         ),
//       ),
//       bottomNavigationBar: CustomBottomBar(
//         onChanged: (BottomBarEnum type) => Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type)),
//       ),
//     );
//   }

//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.shift:
//         return AppRoutes.stat_page;
//       case BottomBarEnum.profile:
//         return AppRoutes.profile_page;
//       case BottomBarEnum.tasks:
//         return AppRoutes.tasks_page;
//       case BottomBarEnum.academy:
//         return AppRoutes.academy_screen;
//     }
//   }

//   Widget getCurrentPage(
//     BuildContext context,
//     String currentRoute,
//   ) {
//     switch (currentRoute) {
//       case AppRoutes.stat_page:
//         GetIt.I.get<Connector>().changeRouteOn(AppRoutes.stat_page);
//         return StatPage.builder(context);
//       case AppRoutes.profile_page:
//         GetIt.I.get<Connector>().changeRouteOn(AppRoutes.profile_page);
//         return ProfilePage.builder(context);
//       case AppRoutes.tasks_page:
//         GetIt.I.get<Connector>().changeRouteOn(AppRoutes.tasks_page);
//         return TasksPage.builder(context);
//       case AppRoutes.academy_screen:
//         GetIt.I.get<Connector>().changeRouteOn(AppRoutes.academy_screen);
//         return AcademyScreen.builder(context);
//       default:
//         return const Center(child: Text('error'));
//     }
//   }
// }
