import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:delmo_app/my_account/myaccount_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:provider/provider.dart';

class MyaccountView extends StatefulWidget {
  const MyaccountView({super.key});

  @override
  State<MyaccountView> createState() => _MyaccountViewState();
}

class _MyaccountViewState extends State<MyaccountView> {
  @override
  Widget build(BuildContext context) {
    final myaccountViewmodel = Provider.of<MyaccountViewmodel>(context);
    return PlatformScaffold(
      body: SafeArea(
        child:Column(
          children: [
            //Header Start
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
                            // back
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back, color: theam_sky_blue_color),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Profile",
                        style: textStyleForHeading.copyWith(color: white_color),
                      ),
                      Spacer(),
                      Container(
                        width: 50,
                        // child: IconButton(
                        //   padding: EdgeInsets.zero,
                        //   onPressed: () {
                        //     // navigate to notification page
                        //   },
                        //   icon: Image.asset(
                        //     "assets/images/notification.png",
                        //     height: 20,
                        //     width: 20,
                        //     color: white_color,
                        //   ),
                        // ),
                      ),
                    ],
                  ),
                ),
            //Header End

            Container(
              color: background_color,
              width: double.infinity,
              child: Stack(
                children: [
                  Column(
                  children: [
                    SizedBox(height: 20),
                     Container(
                      height: 120, 
                      width: 120, 
                      decoration: circleWithBorder.copyWith(border: Border.all(
                        color: theam_dark_blue_color
                      )),
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "assets/images/default_image.png",
                          fit: BoxFit.cover,
                          ),
                      ),
                      ),
                      SizedBox(height: 10),
                    Text("Sam Thomas",
                    style: textStyleForHeading,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail,
                        size: 20,
                        color: theam_sky_blue_color,),
                        SizedBox(width: 10),
                        Text("samthomas@gmail.com",
                        style: textStyleForTextField,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone,
                        size: 20,
                        color: theam_sky_blue_color,),
                        SizedBox(width: 10),
                        Text("+91 9804682206",
                        style: textStyleForTextField,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),

                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(onPressed: (){
                   myaccountViewmodel.navigateToEditAccount(context);
                  }, icon: Image.asset("assets/images/edit.png",
                  height: 30,
                  width: 30,
                  )),
                )
                ]
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                color: white_color,
                child: SingleChildScrollView(
                  child: Column(
                    children: [              

                      Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            padding: EdgeInsets.all(20),
                            child: Image.asset("assets/images/address.png"),
                          ),
                          Expanded(child: Container(
                            padding: EdgeInsets.all(10),                            
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  width: double.infinity,
                                  child: Text("Adddress",
                                  style: textStyleForSubHeading.copyWith(color: theam_dark_blue_color),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: double.infinity,
                                  child: Text("9731 Beaver Ridge Ave.East, FL 33063",
                                  style: textStyleForName,
                                  ),
                                ),
                                SizedBox(height: 20),    
                                Container(
                                  color: grey_color,
                                  height: 1,
                                  width: double.infinity,
                                )                            
                              ],
                            ),
                          ))
                        ],
                      ),

                        Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            padding: EdgeInsets.all(20),
                            child: Image.asset("assets/images/zipcode.png"),
                          ),
                          Expanded(child: Container(
                            padding: EdgeInsets.all(10),                            
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  width: double.infinity,
                                  child: Text("Zip Code",
                                  style: textStyleForSubHeading.copyWith(color: theam_dark_blue_color),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: double.infinity,
                                  child: Text("7122222",
                                  style: textStyleForName,
                                  ),
                                ),
                                SizedBox(height: 20),    
                                Container(
                                  color: grey_color,
                                  height: 1,
                                  width: double.infinity,
                                )                            
                              ],
                            ),
                          ))
                        ],
                      ),

                        Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            padding: EdgeInsets.all(20),
                            child: Image.asset("assets/images/city.png"),
                          ),
                          Expanded(child: Container(
                            padding: EdgeInsets.all(10),                            
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  width: double.infinity,
                                  child: Text("City",
                                  style: textStyleForSubHeading.copyWith(color: theam_dark_blue_color),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: double.infinity,
                                  child: Text("Kolkata",
                                  style: textStyleForName,
                                  ),
                                ),
                                SizedBox(height: 20),    
                                Container(
                                  color: grey_color,
                                  height: 1,
                                  width: double.infinity,
                                )                            
                              ],
                            ),
                          ))
                        ],
                      ),

                        Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            padding: EdgeInsets.all(20),
                            child: Image.asset("assets/images/state.png"),
                          ),
                          Expanded(child: Container(
                            padding: EdgeInsets.all(10),                            
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  width: double.infinity,
                                  child: Text("State",
                                  style: textStyleForSubHeading.copyWith(color: theam_dark_blue_color),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: double.infinity,
                                  child: Text("West Bengal",
                                  style: textStyleForName,
                                  ),
                                ),
                                SizedBox(height: 20),    
                                Container(
                                  color: grey_color,
                                  height: 1,
                                  width: double.infinity,
                                )                            
                              ],
                            ),
                          ))
                        ],
                      ),

                        Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            padding: EdgeInsets.all(20),
                            child: Image.asset("assets/images/Country.png"),
                          ),
                          Expanded(child: Container(
                            padding: EdgeInsets.all(10),                            
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                Container(
                                  width: double.infinity,
                                  child: Text("Country",
                                  style: textStyleForSubHeading.copyWith(color: theam_dark_blue_color),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Container(
                                  width: double.infinity,
                                  child: Text("India",
                                  style: textStyleForName,
                                  ),
                                ),
                                SizedBox(height: 20),    
                                Container(
                                  color: grey_color,
                                  height: 1,
                                  width: double.infinity,
                                )                            
                              ],
                            ),
                          ))
                        ],
                      ),

                      
                
                    ],
                  ),
                ),
              )
              
              )

          ],
        )
      ),
    );
  }
}