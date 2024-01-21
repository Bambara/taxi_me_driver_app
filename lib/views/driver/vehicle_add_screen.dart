import 'package:flutter/material.dart';

import '../../controllers/driver/vehicle_add_controller.dart';
import '../../core/app_export.dart';
import '../../widgets/flat_button_widget.dart';
import '../../widgets/image_overlay_widget.dart';
import '../../widgets/text_field_widget.dart';
import '../user/approve_pending_screen.dart';

class VehicleAddScreen extends GetWidget<VehicleAddController> {
  const VehicleAddScreen({Key? key}) : super(key: key);

  // final controller = Get.put(VehicleAddController());

  @override
  Widget build(BuildContext context) {
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
            title: Text('lblAddVehicle_VAC'.tr),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'txtBrand_VAC'.tr,
                  label: '',
                  isRequired: true,
                  txtCtrl: controller.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.emailAddress),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'txtVehicleModel_VAC'.tr,
                  label: '',
                  isRequired: true,
                  txtCtrl: controller.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'txtVehicleColor_VAC'.tr,
                  label: '',
                  isRequired: true,
                  txtCtrl: controller.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'txtVehiclePassengerCapacity_VAC'.tr,
                  label: '',
                  isRequired: true,
                  txtCtrl: controller.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.number),
              SizedBox(height: screenHeight * 0.02),
              TextFieldWidget(
                  hintText: 'txtVehicleRegisterNumber_VAC'.tr,
                  label: '',
                  isRequired: true,
                  txtCtrl: controller.passCtrl,
                  fontSize: Constants.textFontSize,
                  secret: false,
                  heightFactor: 0.055,
                  widthFactor: 0.9,
                  inputType: TextInputType.text),
              SizedBox(height: screenHeight * 0.02),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => controller.pickFrontImage().then((value) => controller.frontImage = value),
                        child: GetBuilder<VehicleAddController>(
                            builder: (controller) => controller.isFrontSelected == false
                                ? const ImageOverlayWidget(
                                    provider: AssetImage('assets/images/vehicle_front.png'),
                                    heightFactor: 0.35,
                                    widthFactor: 0.45,
                                    boarderRadius: 0.02,
                                    boarderStatus: true,
                                    title: 'Vehicle Front',
                                  )
                                : ImageOverlayWidget(
                                    provider: FileImage(controller.frontImage),
                                    heightFactor: 0.35,
                                    widthFactor: 0.45,
                                    boarderRadius: 0.02,
                                    boarderStatus: true,
                                    title: 'Vehicle Front',
                                  )),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ImageOverlayWidget(
                          provider: AssetImage('assets/images/vehicle_back.png'),
                          heightFactor: 0.35,
                          widthFactor: 0.45,
                          boarderRadius: 0.02,
                          boarderStatus: true,
                          title: 'Vehicle Back',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const ImageOverlayWidget(
                          provider: AssetImage('assets/images/vehicle_registration_certificate.png'),
                          heightFactor: 0.35,
                          widthFactor: 0.45,
                          boarderRadius: 0.02,
                          boarderStatus: true,
                          title: 'NIC',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const ImageOverlayWidget(
                          provider: AssetImage('assets/images/vehicle_insurance_front.png'),
                          heightFactor: 0.35,
                          widthFactor: 0.45,
                          boarderRadius: 0.02,
                          boarderStatus: true,
                          title: 'NIC',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const ImageOverlayWidget(
                          provider: AssetImage('assets/images/vehicle_revenue_licence.png'),
                          heightFactor: 0.35,
                          widthFactor: 0.45,
                          boarderRadius: 0.02,
                          boarderStatus: true,
                          title: 'NIC',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                ],
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButtonWidget(
                    title: 'Next',
                    function: () {
                      Get.to(() => ApprovePendingScreen());
                    },
                    heightFactor: 0.065,
                    widthFactor: 0.5,
                    color: themeData.buttonTheme.colorScheme!.secondary,
                  ),
                  SizedBox(width: screenWidth * 0.04),
                ],
              ),*/
              FlatButtonWidget(
                title: 'btnSubmit'.tr,
                function: () {
                  Get.to(() => ApprovePendingScreen());
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
