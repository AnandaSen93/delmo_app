import 'dart:async';
import 'dart:developer';

import 'package:delmo_app/registration/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    print("start");
    Timer(const Duration(seconds: 3), () {
      print("end");
      //Navigator.pushNamed(context, 'howItsWorks');
      // getLoginStatus().then((isLoggedIn) {       
      // }
      // );

       Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) =>  RegistrationView(),
            //builder: (context) => isLoggedIn ? MenuView() : LoginView(),
          ),
          (Route<dynamic> route) => false,
        );
    });
  }

  Future<bool> getLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("isLoggedIn") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Image.asset(
        "assets/images/splash.png",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
