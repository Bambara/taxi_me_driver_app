import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxi_me_driver_app/views/user/signup_screen_step_02.dart';

import '../../controllers/user/otp_verify_controller.dart';
import '../../core/app_export.dart';
import '../../widgets/avatar_widget.dart';
import '../../widgets/flat_button_widget.dart';
import '../../widgets/text_field_widget.dart';

class OPTVerifyScreen extends GetWidget<OPTVerifyController> {
  const OPTVerifyScreen({Key? key}) : super(key: key);

  // static const routeName = '/otp-verify-screen';

  // final controller = Get.put(OPTVerifyController());

  @override
  Widget build(BuildContext context) {
    bool isChecked = true;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: themeData.navigationBarTheme.backgroundColor,
        foregroundColor: themeData.textTheme.bodyText1!.color,
        title: const Text('OTP Verification'),
        centerTitle: true,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Constants.screenCornerRadius),
            bottomRight: Radius.circular(Constants.screenCornerRadius),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.08),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.05),
                  AvatarWidget(provider: const AssetImage('assets/icons/driver-icon.png'), size: screenWidth * 0.2),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.07),
                  Text('Hello', style: TextStyle(fontSize: screenWidth * 0.08)),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: screenWidth * 0.07),
                  Text('Buddhika', style: TextStyle(fontSize: screenWidth * 0.08)),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              Text('Enter the received verification code', style: TextStyle(fontSize: screenWidth * 0.035)),
              SizedBox(height: screenHeight * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldWidget(
                      hintText: '',
                      label: '',
                      isRequired: true,
                      txtCtrl: controller.passCtrl,
                      fontSize: 0.08,
                      secret: false,
                      heightFactor: 0.1,
                      widthFactor: 0.15,
                      inputType: TextInputType.number),
                  SizedBox(width: screenWidth * 0.04),
                  TextFieldWidget(
                      hintText: '',
                      label: '',
                      isRequired: true,
                      txtCtrl: controller.passCtrl,
                      fontSize: 0.08,
                      secret: false,
                      heightFactor: 0.1,
                      widthFactor: 0.15,
                      inputType: TextInputType.number),
                  SizedBox(width: screenWidth * 0.04),
                  TextFieldWidget(
                      hintText: '',
                      label: '',
                      isRequired: true,
                      txtCtrl: controller.passCtrl,
                      fontSize: 0.08,
                      secret: false,
                      heightFactor: 0.1,
                      widthFactor: 0.15,
                      inputType: TextInputType.number),
                  SizedBox(width: screenWidth * 0.04),
                  TextFieldWidget(
                      hintText: '',
                      label: '',
                      isRequired: true,
                      txtCtrl: controller.passCtrl,
                      fontSize: 0.08,
                      secret: false,
                      heightFactor: 0.1,
                      widthFactor: 0.15,
                      inputType: TextInputType.number),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                      text: "Resend Code",
                      style: TextStyle(color: themeData.buttonTheme.colorScheme!.secondary, fontSize: screenWidth * Constants.textFontSize),
                      recognizer: TapGestureRecognizer()..onTap = () {}),
                ],
              )),
              SizedBox(height: screenHeight * 0.18),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButtonWidget(
                    title: 'Next',
                    function: () {
                      Get.to(() => SignupScreenStep02());
                    },
                    heightFactor: 0.065,
                    widthFactor: 0.4,
                    bgColor: themeData.buttonTheme.colorScheme!.secondary,
                    textColor: ColorConstant.white,
                  ),
                  SizedBox(width: screenWidth * 0.06),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
