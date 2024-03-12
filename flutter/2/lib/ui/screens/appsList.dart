import 'package:app_with_apps/exports.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.current.appName)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.screen),
              child: Text(AppLocalizations.current.appName),
            ),
          ],
        ),
      ),
    );
  }
}