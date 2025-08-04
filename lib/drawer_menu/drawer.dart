import 'package:delmo_app/drawer_menu/drawer_viewmodel.dart';
import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider/provider.dart';

class DrawerView extends StatelessWidget {
  final VoidCallback onItemTap;

  DrawerView({required this.onItemTap});

  List<String>? menuList = [
    'Home',
    'My Account',
    'My Orders',
    'My Request',
    'About Us',
    'Contact Us',
    'Privacy Policy',
    'Terms & Conditions',
  ];

  @override
  Widget build(BuildContext context) {
    final drawerViewmodel = Provider.of<DrawerViewmodel>(context);
    return PlatformScaffold(
      body: SafeArea(
        child: Container(
          color: theam_dark_blue_color,
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  height: 120,
                                  width: 120,                                
                                  decoration: circleWithBorder.copyWith(
                                    border: Border.all(color: theam_dark_blue_color),
                                  ),
                                  padding: EdgeInsets.all(2),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(60),
                                    child: Image.asset(
                                      "assets/images/default_image.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
              SizedBox(height: 10),
              Text(
                "Thomas Doe",
                style: textStyleForName.copyWith(color: white_color),
              ),
              Text(
                "+911234567890",
                style: textStyleForphone.copyWith(color: white_color),
              ),
              SizedBox(height: 10),
              Container(height: 1, color: theam_sky_blue_color),
              SizedBox(height: 10),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.separated(
                        itemCount: menuList?.length ?? 0,
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disables scrolling
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10);
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            child: GestureDetector(
                              onTap: () {
                                onItemTap();

                                switch (menuList?[index]) {
                                  case 'Home':                                    
                                    break;
                                  case 'My Account':
                                  drawerViewmodel.navigateToMyAccount(context);
                                  case 'My Orders':
                                     drawerViewmodel.navigateToMyOrders(context);
                                  case 'My Request':
                                     drawerViewmodel.navigateToMyRequest(context);
                                  case 'About Us':
                                     drawerViewmodel.navigateToAboutUs(context);
                                  case 'Contact Us':
                                     drawerViewmodel.navigateToContactUs(context);
                                  case 'Privacy Policy':
                                     drawerViewmodel.navigateToPrivacy(context);
                                  case 'Terms & Conditions':
                                     drawerViewmodel.navigateToTermsView(context);
                                  default:
                                    drawerViewmodel.navigateToHome(context);
                                    break;
                                }
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                switch (menuList?[index]) {
                                  'Home'=> "assets/images/menu/home.png",
                                  'My Account'=> "assets/images/menu/account.png",
                                  'My Orders'=>  "assets/images/menu/myorder.png",
                                  'My Request'=> "assets/images/menu/request.png",
                                  'About Us'=> "assets/images/menu/aboutus.png",
                                  'Contact Us'=> "assets/images/menu/contact.png",
                                  'Privacy Policy'=> "assets/images/menu/privacy.png",
                                  'Terms & Conditions' => "assets/images/menu/terms.png",
                                   null => "assets/images/menu/home.png",
                                  String() => "assets/images/menu/home.png",
                                },
                                    
                                    height: 20,
                                    width: 20,
                                    color: white_color,

                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    menuList?[index] ?? "",
                                    style: textStyleForName.copyWith(
                                      color: white_color,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),

                      SizedBox(height: 10),
                      Container(height: 1, color: theam_sky_blue_color),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: (){
                          onItemTap();
                          drawerViewmodel.navigateToLogin(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              size: 20,
                              Icons.logout,
                              color: theam_sky_blue_color,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Logout',
                              style: textStyleForName.copyWith(
                                color: theam_sky_blue_color,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
