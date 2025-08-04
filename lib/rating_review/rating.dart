import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class RatingView extends StatefulWidget {
  const RatingView({super.key});

  @override
  State<RatingView> createState() => _RatingViewState();
}

class _RatingViewState extends State<RatingView> {
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
                    "Rating & Review",
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
              child: Container(
                color: background_color,
                padding: EdgeInsets.only(top: 15),
                child: SingleChildScrollView(
                  child: Container(
                    color: white_color,
                    child: Column(
                      children: [
                        SizedBox(height: 20),
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
                        SizedBox(height: 10),
                        Text(
                          "Customer Name",
                          style: textStyleForTextField.copyWith(
                            color: theam_sky_blue_color,
                          ),
                        ),

                        SizedBox(height: 10),
                        Text("Sam Thomas", style: textStyleForHeading),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail,
                              size: 20,
                              color: theam_sky_blue_color,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "samthomas@gmail.com",
                              style: textStyleForTextField,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone,
                              size: 20,
                              color: theam_sky_blue_color,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "+91 9804682206",
                              style: textStyleForTextField,
                            ),
                          ],
                        ),
                        SizedBox(height: 15),

                        Container(
                          width: double.infinity,
                          child: RatingBar(
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            emptyColor: theam_dark_blue_color,
                            filledColor: theam_dark_blue_color,
                            initialRating: 1,
                            maxRating: 5,
                            size: 40,
                            alignment: Alignment.center,
                            onRatingChanged: (double) {},
                            //onRatingChanged: (value) => _viewModel.ratingValue = value.toString(),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            height: 200,
                            padding: EdgeInsets.only(left: 10, right: 10),
                            decoration: box_border.copyWith(
                              border: Border.all(color: theam_dark_blue_color),
                            ),
                            child: PlatformTextField(
                              //controller: addeditAddressViewModel.firstNameController, // (Optional: TextEditingController, currently commented)
                              // onChanged: addeditAddressViewModel.setFirstName, // Called on text change
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'[0-9]'),
                                ),
                              ],
                              keyboardType: TextInputType.name,
                              // minLines: 4,         // Minimum height (optional)
                              // maxLines: null, // Keyboard optimized for name input
                              onSubmitted: (_) => _toggleKeyboard(),
                              hintText:
                                  'Write your review', // Common hint text (can override per platform)
                              // iOS Specific Customization
                              cupertino: (context, platform) =>
                                  CupertinoTextFieldData(
                                    decoration: text_decoration_clear,
                                    style:
                                        textStyleForTextField, // Text color on iOS
                                  ),
                          
                              // Android Specific Customization
                              material: (context, platform) =>
                                  MaterialTextFieldData(
                                    decoration: InputDecoration(
                                      hintText: 'Write your review',
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      filled: false, // No background fill
                                      contentPadding: EdgeInsets.all(10),
                                      // Optional: reduce padding
                                    ),
                                    style: textStyleForTextField,
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
          
              Container(
                height: 80,
                color: background_color,
                padding: EdgeInsets.all(10),
                child: TextButton(onPressed: (){

                }, child: Container(
                  decoration: gradient_button_decoration,
                   width: double.infinity,
                   height: double.infinity,
                   alignment: Alignment.center,
                  child: Text("SUBMIT → ", style: textStyleForButton),
                )),
              )



          ],
        ),
      ),
    );
  }
}
