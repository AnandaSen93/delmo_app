import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(child: 
           Column(
             children: [
               // Header
            Container(
              height: 50,
              color: theam_dark_blue_color,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        // open slide menu
                      },
                      icon: Icon(Icons.menu, color: theam_sky_blue_color),
                    ),
                  ),
                  Spacer(),
                  Text("Delmo",
                       style: textStyleForHeading.copyWith(color: white_color),
                  ),
                  Spacer(),
                  Container(
                    width: 50,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        // navigate to notification page
                      },
                      icon: Image.asset("assets/images/notification.png",
                      height: 20,
                      width: 20,
                      color: white_color,),
                    ),
                  ),
                ],
              ),
            ),

            // Header
             ],
        )),
    );
  }
}
