import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class RequestsubmitView extends StatefulWidget {
  const RequestsubmitView({super.key});

  @override
  State<RequestsubmitView> createState() => _RequestsubmitViewState();
}

class _RequestsubmitViewState extends State<RequestsubmitView> {

    final FocusNode _focusNode = FocusNode();
  void _toggleKeyboard() {
    if (_focusNode.hasFocus) {
      _focusNode.unfocus(); // Hide keyboard
    } else {
      FocusScope.of(context).requestFocus(_focusNode); // Show keyboard
    }
  }


  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(
        child: Column(
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
                    "Submit Request",
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
            Expanded(
              child: GestureDetector(
                onTap: (){
                  _toggleKeyboard();
                },
                child: SingleChildScrollView(
                  child: Container(
                    color: background_color,
                    child: Column(
                      children: [
                        Container(
                          color: white_color,
                          child: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  width: 50, 
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Icon(
                                        Icons.circle,
                                        size: 15,
                                        color: theam_dark_blue_color,
                                        ),
                                        Expanded(
                                          child: Container(
                                            width: 1,
                                            color: Colors.black26,
                                          ),
                                        ),
                                        Icon(
                                        Icons.circle,
                                        size: 15,
                                        color: theam_sky_blue_color,
                                        ),
                                        SizedBox(height: 20,)

                                    ],
                                  ),
                                  ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          "Pickup Location",
                                          style: textStyleForphone.copyWith(
                                            color: grey_color,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "7197 Wilson Drive Compton, CA 90221",
                                          style: textStyleForTextField,
                                        ),
                                        SizedBox(height: 20),
                                        Container(height: 1, color: grey_color),
                                        SizedBox(height: 20),
                                        Text(
                                          "Drop Location",
                                          style: textStyleForphone.copyWith(
                                            color: grey_color,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          "7746 Court Drive Bakersfield, CA 93306",
                                          style: textStyleForTextField,
                                        ),
                                        SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                
                        SizedBox(height: 20),
                
                        Container(
                          color: white_color,
                          padding: EdgeInsets.only(
                            left: 25,
                            right: 25,
                            top: 20,
                            bottom: 20,
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          size: 20,
                                          color: theam_sky_blue_color,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Estimated Distance",
                                          style: textStyleForTextField,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text("60.7 km", style: textStyleForTextField),
                                  ],
                                ),
                              ),
                
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          size: 20,
                                          color: theam_sky_blue_color,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Move Date",
                                          style: textStyleForTextField,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "12/05/2022",
                                      style: textStyleForTextField,
                                    ),
                                  ],
                                ),
                              ),
                
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.punch_clock,
                                          size: 20,
                                          color: theam_sky_blue_color,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Move Time",
                                          style: textStyleForTextField,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text("9:00 am", style: textStyleForTextField),
                                  ],
                                ),
                              ),
                
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.car_rental,
                                          size: 20,
                                          color: theam_sky_blue_color,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Move Size",
                                          style: textStyleForTextField,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text("Studio", style: textStyleForTextField),
                                  ],
                                ),
                              ),
                
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.gif_box,
                                          size: 20,
                                          color: theam_sky_blue_color,
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          "Packing Service",
                                          style: textStyleForTextField,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text("None", style: textStyleForTextField),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                
                        SizedBox(height: 20),
                
                        Container(
                          color: white_color,
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivery Note(optional)",
                                style: textStyleForTextField,
                              ),
                              SizedBox(height: 10),
                              Container(
                                height: 100,
                                width: double.infinity,
                                padding: EdgeInsets.all(2),
                
                                decoration: box_border.copyWith(
                                  color: Colors.black12,
                                  border: Border.all(color: Colors.black12),
                                ),
                                child: PlatformTextField(
                                  maxLines: 3,
                                  material: (_, __) => MaterialTextFieldData(
                                    decoration: InputDecoration(
                                      hintText: "Please enter note here...",
                                      alignLabelWithHint: true,
                                      filled: true,
                                      fillColor: Colors
                                          .transparent, // Make background clear
                                      border:
                                          OutlineInputBorder(), // Optional: for visible border
                                    ),
                                  ),
                                  cupertino: (_, __) => CupertinoTextFieldData(
                                    placeholder: "Please enter note here...",
                                    textAlignVertical: TextAlignVertical.top,
                                    decoration: BoxDecoration(
                                      color: Colors
                                          .transparent, // Make background clear
                                      // border: Border.all(color: CupertinoColors.systemGrey), // Optional
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                
                        SizedBox(height: 20),
                
                        Container(
                          color: white_color,
                          width: double.infinity,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            
                            children: [
                              Text(
                                "Upload Images",
                                style: textStyleForHeading.copyWith(
                                  color: theam_dark_blue_color,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  padding: EdgeInsets.only(left:20,right: 20,top: 10, bottom: 10),
                                height: 80,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1,
                                      child:Container(
                                        decoration: box_border.copyWith(
                                          border: Border.all(
                                            color: Colors.transparent
                                          ),
                                          color: white_color,
                                          boxShadow: [shadowBottom],
                                        ),                                        
                                        child: Icon(Icons.add)),
                                    ),
                                    AspectRatio(
                                      aspectRatio: 1,
                                      child:Container(
                                        decoration: box_border.copyWith(
                                          border: Border.all(
                                            color: Colors.transparent
                                          ),
                                          color: white_color,
                                          boxShadow: [shadowBottom],
                                        ),                                        
                                        child: Icon(Icons.add)),
                                    ),
                                     AspectRatio(
                                      aspectRatio: 1,
                                      child:Container(
                                        decoration: box_border.copyWith(
                                          border: Border.all(
                                            color: Colors.transparent
                                          ),
                                          color: white_color,
                                          boxShadow: [shadowBottom],
                                        ),                                        
                                        child: Icon(Icons.add)),
                                    ),
                                     AspectRatio(
                                      aspectRatio: 1,
                                      child:Container(
                                        decoration: box_border.copyWith(
                                          border: Border.all(
                                            color: Colors.transparent
                                          ),
                                          color: white_color,
                                          boxShadow: [shadowBottom],
                                        ),                                        
                                        child: Icon(Icons.add)),
                                    ),
                                     AspectRatio(
                                      aspectRatio: 1,
                                      child:Container(
                                        decoration: box_border.copyWith(
                                          border: Border.all(
                                            color: Colors.transparent
                                          ),
                                          color: white_color,
                                          boxShadow: [shadowBottom],
                                        ),                                        
                                        child: Icon(Icons.add)),
                                    ),

                                  ],
                                ),
                              ),
                              // images
                              SizedBox(height: 10,),
                              Text(
                                "*Maximum 5 images",
                                style: textStyleForphone.copyWith(
                                  color: theam_dark_blue_color,
                                ),
                              ),
                            ],
                          ),
                        ),
                
                        SizedBox(height: 20),
                
                        Text(
                          "Payment Method",
                          style: textStyleForHeading.copyWith(
                            color: theam_dark_blue_color,
                          ),
                        ),
                
                        Container(
                          height: 60,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Text("Online", style: textStyleForTextField),
                                  SizedBox(width: 10),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/images/rounded_uncheck.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Text("COD ", style: textStyleForTextField),
                                  SizedBox(width: 10),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      "assets/images/rounded_check.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: gradient_button_decoration,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "SUBMIT REQUEST → ",
                                style: textStyleForButton,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
