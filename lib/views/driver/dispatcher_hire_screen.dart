import 'package:flutter/material.dart';

import '../../controllers/driver/dispatcher_hire_controller.dart';
import '../../core/app_export.dart';
import '../../widgets/flat_button_widget.dart';
import '../../widgets/text_field_widget.dart';

class DispatcherHireScreen extends GetWidget<DispatcherHireController> {
  const DispatcherHireScreen({Key? key}) : super(key: key);

  // static const routeName = '/dispatcher_screen';

  // final _suC = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    bool isChecked = true;

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: themeData.navigationBarTheme.backgroundColor,
            foregroundColor: themeData.textTheme.bodyText1!.color,
            floating: true,
            snap: true,
            title: Text('lblDispatcherHire_DHireS'.tr),
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
              Container(
                margin: EdgeInsets.all(screenWidth * 0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.03)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    color: Colors.black26,
                    height: screenHeight * 0.3,
                  ),
                ),
              ),
              Container(
                color: ColorConstant.appOrange,
                height: screenHeight * 0.8,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(screenWidth * 0.01),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.03)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          color: ColorConstant.appBlue,
                          height: screenHeight * 0.06,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text('lblCustomerInformation_DHireS'.tr),
                    SizedBox(height: screenHeight * 0.005),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.02)),
                        child: Container(
                          color: ColorConstant.white,
                          height: screenHeight * 0.08,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextFieldWidget(
                                    hintText: 'Customer Name',
                                    label: '',
                                    isRequired: true,
                                    txtCtrl: controller.customerNameCtrl,
                                    fontSize: Constants.textFontSize,
                                    secret: false,
                                    heightFactor: 0.055,
                                    widthFactor: 0.6,
                                    inputType: TextInputType.text),
                                SizedBox(width: screenWidth * 0.01),
                                TextFieldWidget(
                                    hintText: 'Mobile',
                                    label: '',
                                    isRequired: true,
                                    txtCtrl: controller.customerMobileCtrl,
                                    fontSize: Constants.textFontSize,
                                    secret: false,
                                    heightFactor: 0.055,
                                    widthFactor: 0.33,
                                    inputType: TextInputType.phone),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text('lblTimeAndLocation_DHireS'.tr),
                    SizedBox(height: screenHeight * 0.005),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.01),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.02)),
                        child: Container(
                          color: ColorConstant.white,
                          height: screenHeight * 0.15,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextFieldWidget(
                                        hintText: 'Date',
                                        label: '',
                                        isRequired: true,
                                        txtCtrl: controller.customerNameCtrl,
                                        fontSize: Constants.textFontSize,
                                        secret: false,
                                        heightFactor: 0.055,
                                        widthFactor: 0.6,
                                        inputType: TextInputType.text),
                                    SizedBox(width: screenWidth * 0.01),
                                    TextFieldWidget(
                                        hintText: 'Time',
                                        label: '',
                                        isRequired: true,
                                        txtCtrl: controller.customerMobileCtrl,
                                        fontSize: Constants.textFontSize,
                                        secret: false,
                                        heightFactor: 0.055,
                                        widthFactor: 0.33,
                                        inputType: TextInputType.phone),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.005),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    FlatButtonWidget(
                                      title: 'PICKUP LOCATION',
                                      function: () {
                                        // Get.to(() => OPTVerifyScreen());
                                        // Get.to(() => const DispatcherScreen(), binding: DispatcherScreenBinding());
                                      },
                                      heightFactor: 0.065,
                                      widthFactor: 0.4,
                                      bgColor: themeData.buttonTheme.colorScheme!.secondary,
                                      textColor: ColorConstant.white,
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    FlatButtonWidget(
                                      title: 'DROP LOCATION',
                                      function: () {
                                        // Get.to(() => OPTVerifyScreen());
                                        // Get.to(() => const DispatcherScreen(), binding: DispatcherScreenBinding());
                                      },
                                      heightFactor: 0.065,
                                      widthFactor: 0.4,
                                      bgColor: themeData.buttonTheme.colorScheme!.secondary,
                                      textColor: ColorConstant.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text('lblPickCategory_DHireS'.tr),
                    SizedBox(height: screenHeight * 0.005),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      /*bottomNavigationBar: ConvexAppBar(
        height: screenHeight * 0.06,
        backgroundColor: themeData.primaryColor,
        color: themeData.textTheme.bodyMedium?.color,
        items: [
          TabItem(icon: Image(width: screenWidth * 0.08, height: screenWidth * 0.08, image: const Svg(Assets.iconsOwnDispatch)), title: 'btnOwnDispatch_DHS'.tr),
          TabItem(icon: Image(width: screenWidth * 0.08, height: screenWidth * 0.08, image: const Svg(Assets.iconsOwnNetwork)), title: 'btnOwnNetwork_DHS'.tr),
        ],
        onTap: (int i) {
          controller.selectedIndex = i;
          if (i == 0) {
            OwnDispatchTabBinding().dependencies();
          } else if (i == 1) {
            OwnNetworkTabBinding().dependencies();
          }
          // Get.put(InvoiceAddController()).onReady();
          // if (kDebugMode) {
          //   print('click index=$selectedTab');
          // }
        },
        curveSize: 100,
        style: TabStyle.reactCircle,
      ),*/
    );
  }
}
