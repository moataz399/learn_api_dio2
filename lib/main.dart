// @dart=2.9

import 'package:flutter/material.dart';

import 'app_router.dart';
import 'constants/strings.dart';


String initialRoute;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  initialRoute =homePage;

  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({Key key, @required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: initialRoute,
    );
  }
}
