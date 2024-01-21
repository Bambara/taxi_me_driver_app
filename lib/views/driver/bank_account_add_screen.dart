import 'package:flutter/material.dart';

import '../../controllers/user/signup_controller.dart';
import '../../core/app_export.dart';
import '../../widgets/flat_button_widget.dart';
import '../../widgets/text_field_widget.dart';
import 'dispatcher_screen.dart';

class AddBankAccScreen extends StatelessWidget {
  AddBankAccScreen({Key? key}) : super(key: key);

  static const routeName = '/AddBankAccount';

  final _suC = Get.put(SignUpController());


  @override
  Widget build(BuildContext context) {

    bool isChecked = true;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    return Scaffold(
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: themeData.navigationBarTheme.backgroundColor,
            foregroundColor: themeData.textTheme.bodyText1!.color,
            floating: true,
            snap: true,
            title: const Text('Add Bank Account'),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Constants.screenCornerRadius),
                bottomRight: Radius.circular(Constants.screenCornerRadius),
              ),
            ),
          )
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Bank Name',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Account Name',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'Account Number',
                  label: '',
                  isRequired: true,
                  txtCtrl: _suC.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.emailAddress),
              SizedBox(height: screenHeight * 0.02),
              SizedBox(height: screenHeight * 0.02),
              FlatButtonWidget(
                title: 'ADD ACCOUNT',
                function: () {
                  Get.to(() => DispatcherScreen());
                },
                heightFactor: 0.065,
                widthFactor: 0.7,
                bgColor: themeData.buttonTheme.colorScheme!.secondary,
                textColor: ColorConstant.white,
              ),
              SizedBox(height: screenHeight * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
