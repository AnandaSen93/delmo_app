import 'package:delmo_app/helper_and_api/colors.dart';
import 'package:delmo_app/helper_and_api/textstyle.dart';
import 'package:delmo_app/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:country_picker/country_picker.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final FocusNode _focusNode = FocusNode();
  String _countryCode = '+91'; // Default

  void _toggleKeyboard() {
    if (_focusNode.hasFocus) {
      _focusNode.unfocus(); // Hide keyboard
    } else {
      FocusScope.of(context).requestFocus(_focusNode); // Show keyboard
    }
  }

  @override
  Widget build(BuildContext context) {

    final loginViewmodel = Provider.of<LoginViewmodel>(context);
    return PlatformScaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            _toggleKeyboard();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 350,
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
                    "Login",
                    textAlign: TextAlign.center,
                    style: textStyleForHeading,
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Text(
                    "Please enter your mobile number",
                    textAlign: TextAlign.center,
                    style: textStyleForSubHeading.copyWith(
                      color: Colors.black54,
                    ),
                    maxLines: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: box_border.copyWith(border: Border.all(
                                color: theam_dark_blue_color
                              )),
                    child: Row(
                      children: [
                        Image.asset("assets/images/mobile.png"),
                        Container(
                          height: double.infinity,
                          //width: 80,
                         // color: Colors.amberAccent,
                          child:TextButton(
                              onPressed: () {
                                showCountryPicker(
                                  context: context,
                                  showPhoneCode: true,
                                  onSelect: (Country country) {
                                    setState(() {
                                      _countryCode = '+${country.phoneCode}';
                                    });
                                  },
                                );
                              },
                              child: Row(
                                children: [
                                  Text(
                                    _countryCode,
                                    style: textStyleForTextField.copyWith(
                                      color: Colors.black54,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            ),

                            // Text("+91",
                            // style: textStyleForTextField,
                            // textAlign: TextAlign.center,
                            // ),
                        ),
                        Expanded(
                          child: PlatformTextField(
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
                                'Mobile Number', // Common hint text (can override per platform)
                            // iOS Specific Customization
                            cupertino: (context, platform) =>
                                CupertinoTextFieldData(
                                  decoration: text_decoration_clear,
                                  style: textStyleForTextField,
                                  // Text color on iOS
                                ),

                            // Android Specific Customization
                            material: (context, platform) => MaterialTextFieldData(
                              style: textStyleForTextField,
                              decoration: InputDecoration(
                                filled: false, // No fill color
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(
                                  10,
                                ), // Shows border around text field
                                hintText:
                                    'Mobile Nummber', // Hint text (optional, also passed above)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 80),

                Padding(
                  padding: EdgeInsets.all(25),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: gradient_button_decoration,
                    child: TextButton(
                      onPressed: () {
                        loginViewmodel.navigateToOTP(context);

                      },
                      child: Text("Send OTP → ", style: textStyleForButton),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
