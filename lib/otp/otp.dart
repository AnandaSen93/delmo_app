import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
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
            // Header
            Container(
              height: 50,
              color: theam_dark_blue_color,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: theam_sky_blue_color),
                    ),
                  ),
                ],
              ),
            ),
            // Header

            // ScrollView
            Expanded(
              child: GestureDetector(
                onTap: () {
                  _toggleKeyboard();
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: [
              
                      Container(
                        height: 300,
                        width: double.infinity,
                        color: theam_dark_blue_color,
                        child: Center(
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset(
                              "assets/images/login_page_icon.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
              
                      SizedBox(height: 50),
              
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Verify to continue",
                          textAlign: TextAlign.center,
                          style: textStyleForHeading,
                        ),
                      ),
              
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        child: Text(
                          "Please enter the 6 digit code to +91 89******68",
                          textAlign: TextAlign.center,
                          style: textStyleForSubHeading.copyWith(
                            color: Colors.black54,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: Container(
                          height: 50,
                          padding: EdgeInsets.only(left: 0, right: 0),
              
                          child: Row(
                            children: [
              
              
                              Container(
                                height: double.infinity,
                                decoration: otp_decoration,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: PlatformTextField(
                                    maxLength: 1,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    //controller: addeditAddressViewModel .postCodeController, // (Optional: TextEditingController, currently commented)
                                    // onChanged: addeditAddressViewModel.setPostCode, // Called on text change
                                    keyboardType: TextInputType.phone,
                                    // minLines: 4,         // Minimum height (optional)
                                    // maxLines: null, // Keyboard optimized for name input
                                    onSubmitted: (_) => _toggleKeyboard(),
                                    hintText:
                                        '0', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          // Text color on iOS
                                        ),
              
                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                '0', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                              ),
              
                              SizedBox(width: 10),
              
                              Container(
                                height: double.infinity,
                                decoration: otp_decoration,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: PlatformTextField(
                                    maxLength: 1,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    //controller: addeditAddressViewModel .postCodeController, // (Optional: TextEditingController, currently commented)
                                    // onChanged: addeditAddressViewModel.setPostCode, // Called on text change
                                    keyboardType: TextInputType.phone,
                                    // minLines: 4,         // Minimum height (optional)
                                    // maxLines: null, // Keyboard optimized for name input
                                    onSubmitted: (_) => _toggleKeyboard(),
                                    hintText:
                                        '0', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          // Text color on iOS
                                        ),
              
                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                '0', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                              ),
              
                              SizedBox(width: 10),
              
                              Container(
                                height: double.infinity,
                                decoration: otp_decoration,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: PlatformTextField(
                                    maxLength: 1,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    //controller: addeditAddressViewModel .postCodeController, // (Optional: TextEditingController, currently commented)
                                    // onChanged: addeditAddressViewModel.setPostCode, // Called on text change
                                    keyboardType: TextInputType.phone,
                                    // minLines: 4,         // Minimum height (optional)
                                    // maxLines: null, // Keyboard optimized for name input
                                    onSubmitted: (_) => _toggleKeyboard(),
                                    hintText:
                                        '0', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          // Text color on iOS
                                        ),
              
                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                '0', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                              ),
              
                              SizedBox(width: 10),
              
                              Container(
                                height: double.infinity,
                                decoration: otp_decoration,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: PlatformTextField(
                                    maxLength: 1,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    //controller: addeditAddressViewModel .postCodeController, // (Optional: TextEditingController, currently commented)
                                    // onChanged: addeditAddressViewModel.setPostCode, // Called on text change
                                    keyboardType: TextInputType.phone,
                                    // minLines: 4,         // Minimum height (optional)
                                    // maxLines: null, // Keyboard optimized for name input
                                    onSubmitted: (_) => _toggleKeyboard(),
                                    hintText:
                                        '0', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          // Text color on iOS
                                        ),
              
                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                '0', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                              ),
              
                              SizedBox(width: 10),
              
                              Container(
                                height: double.infinity,
                                decoration: otp_decoration,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: PlatformTextField(
                                    maxLength: 1,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    //controller: addeditAddressViewModel .postCodeController, // (Optional: TextEditingController, currently commented)
                                    // onChanged: addeditAddressViewModel.setPostCode, // Called on text change
                                    keyboardType: TextInputType.phone,
                                    // minLines: 4,         // Minimum height (optional)
                                    // maxLines: null, // Keyboard optimized for name input
                                    onSubmitted: (_) => _toggleKeyboard(),
                                    hintText:
                                        '0', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          // Text color on iOS
                                        ),
              
                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                '0', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                              ),
              
                              SizedBox(width: 10),
              
                              Container(
                                height: double.infinity,
                                decoration: otp_decoration,
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: PlatformTextField(
                                    maxLength: 1,
                                    textInputAction: TextInputAction.done,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    //controller: addeditAddressViewModel .postCodeController, // (Optional: TextEditingController, currently commented)
                                    // onChanged: addeditAddressViewModel.setPostCode, // Called on text change
                                    keyboardType: TextInputType.phone,
                                    // minLines: 4,         // Minimum height (optional)
                                    // maxLines: null, // Keyboard optimized for name input
                                    onSubmitted: (_) => _toggleKeyboard(),
                                    hintText:
                                        '0', // Common hint text (can override per platform)
                                    // iOS Specific Customization
                                    cupertino: (context, platform) =>
                                        CupertinoTextFieldData(
                                          decoration: text_decoration_clear,
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          // Text color on iOS
                                        ),
              
                                    // Android Specific Customization
                                    material: (context, platform) =>
                                        MaterialTextFieldData(
                                          style: textStyleForTextField,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            filled: false, // No fill color
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(
                                              10,
                                            ), // Shows border around text field
                                            hintText:
                                                '0', // Hint text (optional, also passed above)
                                          ),
                                        ),
                                  ),
                                ),
                              ),
              
              
              
              
                            ],
                          ),
                        ),
                      ),
              
                      SizedBox(height: 10),
              
                      TextButton(onPressed: (){
              
                      }, child: Container(
                        padding: EdgeInsets.only(right: 15),
                        width: double.infinity,
                        child: Text(
                          "Resend OTP",
                          textAlign: TextAlign.right,
                          style: textStyleForButton.copyWith(color:theam_dark_blue_color),
                        ))),
              
                       SizedBox(height: 40),
              
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: gradient_button_decoration,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Verify OTP → ",
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

            // ScrollView
          ],
        ),
      ),
    );
  }
}


