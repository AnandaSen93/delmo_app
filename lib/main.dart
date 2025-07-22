import 'package:delmo_app/helper_and_api/api_service.dart';
import 'package:delmo_app/helper_and_api/loader.dart';
import 'package:delmo_app/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(providers: [

    Provider(create: (context) => ApiServices()), // Non ChangeNotifier provider
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: GlobalLoader().navigatorKey,
      home: const SplashView(),
    );
  }
}
