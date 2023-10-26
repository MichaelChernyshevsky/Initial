import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';
import 'package:app_with_apps/manager/bloc/bloc.dart';
import 'package:app_with_apps/manager/get.it/app_provider.dart';
import 'package:app_with_apps/manager/provider/ordinaryProvider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

void main() {
  GetIt.I.registerSingleton<AppProvider>(AppProvider());

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<SomeBloc>(create: (context) => SomeBloc()),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => OrdinaryProvider(),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Some",
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashScreen,
      routes: AppRoutes.routes,
    );
  }
}
