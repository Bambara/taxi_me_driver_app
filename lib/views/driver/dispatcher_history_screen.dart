import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../../controllers/driver/dispatcher_history_controller.dart';
import '../../core/app_export.dart';
import '../../generated/assets.dart';
import '../../routes/bindings/own_dispatch_tab_bindings.dart';
import '../../routes/bindings/own_network_tab_bindings.dart';

class DispatcherHistoryScreen extends GetWidget<DispatcherHistoryController> {
  const DispatcherHistoryScreen({Key? key}) : super(key: key);

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
      /*resizeToAvoidBottomInset: true,
      backgroundColor: themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: themeData.navigationBarTheme.backgroundColor,
        foregroundColor: themeData.textTheme.bodyText1!.color,
        elevation: 0,
        title: Text('lblDispatcherHistory_DHS'.tr),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Constants.screenCornerRadius),
            bottomRight: Radius.circular(Constants.screenCornerRadius),
          ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.04),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                color: Colors.black,
                height: screenHeight * 0.24,
                width: screenWidth * 0.4,
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.01),
                    Text('lblDispatches_DPS'.tr, style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
                    Text('lblCompleted_DPS'.tr, style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
                    SizedBox(height: screenHeight * 0.01),
                    Container(color: Colors.white, width: screenWidth * 0.4, height: screenHeight * 0.01),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      height: screenHeight * 0.15,
                      child: Center(
                        child: Text('0', style: TextStyle(color: Colors.green, fontSize: themeData.textTheme.headline5!.fontSize)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.04),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                color: Colors.black,
                height: screenHeight * 0.34,
                width: screenWidth * 0.4,
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.01),
                    Text('lblDispatches_DPS'.tr, style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
                    Text('lblEarnings_DPS'.tr, style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
                    SizedBox(height: screenHeight * 0.01),
                    Container(color: Colors.white, width: screenWidth * 0.4, height: screenHeight * 0.01),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      height: screenHeight * 0.25,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: screenHeight * 0.075),
                            Text('Rs 0.00', style: TextStyle(color: Colors.green, fontSize: themeData.textTheme.headline5!.fontSize)),
                            SizedBox(height: screenHeight * 0.05),
                            FlatButtonWidget(
                              title: 'btnWithdraw_DPS'.tr,
                              function: () {},
                              heightFactor: 0.065,
                              widthFactor: 0.3,
                              bgColor: themeData.colorScheme.secondary,
                              textColor: ColorConstant.white,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Container(
          height: screenHeight * 0.15,
          width: screenWidth * 0.9,
          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.05))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'lblDispatchHireDesc_DPS'.tr,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: screenHeight * 0.11,
                  width: screenWidth * 0.25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: themeData.colorScheme.secondary,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(screenWidth * 0.06), bottomLeft: Radius.circular(screenWidth * 0.06)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'lblDispatch_DPS'.tr,
                        style: TextStyle(color: ColorConstant.white, fontSize: themeData.textTheme.bodyText1!.fontSize),
                      ),
                      Text(
                        'lblHire_DPS'.tr,
                        style: TextStyle(color: ColorConstant.white, fontSize: themeData.textTheme.bodyText1!.fontSize),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.15,
          width: screenWidth * 0.9,
          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.all(Radius.circular(screenWidth * 0.05))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'lblDispatchHistoryDesc_DPS'.tr,
                    maxLines: 2,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: screenHeight * 0.11,
                  width: screenWidth * 0.25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: ColorConstant.appGreen,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(screenWidth * 0.06), bottomLeft: Radius.circular(screenWidth * 0.06)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'lblDispatch_DPS'.tr,
                        style: TextStyle(color: ColorConstant.white, fontSize: themeData.textTheme.bodyText1!.fontSize),
                      ),
                      Text(
                        'lblHistory_DPS'.tr,
                        style: TextStyle(color: ColorConstant.white, fontSize: themeData.textTheme.bodyText1!.fontSize),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: ConvexAppBar(
        height: screenHeight * 0.06,
        backgroundColor: themeData.primaryColor,
        color: themeData.textTheme.bodyMedium?.color,
        items: [
          TabItem(icon: FontAwesomeIcons.fileCirclePlus, title: 'btnOwnDispatch_DHS'.tr),
          TabItem(icon: FontAwesomeIcons.fileCircleExclamation, title: 'btnOwnNetwork_DHS'.tr),
        ],
        onTap: (int i) {
          // _iaC.selectedIndex = i;
          // Get.put(InvoiceAddController()).onReady();
          // if (kDebugMode) {
          //   print('click index=$selectedTab');
          // }
        },
        curveSize: 100,
        style: TabStyle.reactCircle,
      ),*/
      resizeToAvoidBottomInset: true,
      backgroundColor: themeData.scaffoldBackgroundColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: themeData.navigationBarTheme.backgroundColor,
            foregroundColor: themeData.textTheme.bodyText1!.color,
            floating: true,
            snap: true,
            title: Text('lblDispatcherHistory_DHS'.tr),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Constants.screenCornerRadius),
                bottomRight: Radius.circular(Constants.screenCornerRadius),
              ),
            ),
          )
        ],
        body: Center(
          child: GetBuilder<DispatcherHistoryController>(
            builder: (sac) => controller.tabList.elementAt(controller.selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
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
      ),
    );
  }
}
