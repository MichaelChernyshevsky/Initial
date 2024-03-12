import 'dart:async';

import 'package:app_with_apps/ui/routes/app_routes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () async {
      _goToNext();
    });
    super.initState();
  }

  _goToNext() {
    Navigator.of(context).popAndPushNamed(AppRoutes.apps);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Some'),
      ),
    );
  }
}
