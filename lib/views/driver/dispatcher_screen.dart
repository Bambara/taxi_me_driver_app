import 'package:flutter/material.dart';
import 'package:taxi_me_driver_app/widgets/flat_button_widget.dart';

import '../../controllers/driver/dispatcher_controller.dart';
import '../../core/app_export.dart';
import '../../routes/bindings/dispatcher_hire_screen_bindings.dart';
import '../../routes/bindings/dispatcher_history_screen_bindings.dart';
import 'dispatcher_hire_screen.dart';
import 'dispatcher_history_screen.dart';

class DispatcherScreen extends GetWidget<DispatcherController> {
  const DispatcherScreen({Key? key}) : super(key: key);

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
      backgroundColor: themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: themeData.navigationBarTheme.backgroundColor,
        foregroundColor: themeData.textTheme.bodyText1!.color,
        elevation: 0,
        title: Text('lblDispatcher_DPS'.tr),
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
                onTap: () {
                  Get.to(() => const DispatcherHireScreen(), binding: DispatcherHireScreenBinding());
                },
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
                onTap: () {
                  Get.to(() => const DispatcherHistoryScreen(), binding: DispatcherHistoryScreenBinding());
                },
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
      /* body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: themeData.navigationBarTheme.backgroundColor,
            foregroundColor: themeData.textTheme.bodyText1!.color,
            floating: true,
            snap: true,
            title: const Text('Dispatcher'),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Constants.screenCornerRadius),
                bottomRight: Radius.circular(Constants.screenCornerRadius),
              ),
            ),
          )
        ],
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
                      Text('Dispatches', style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
                      Text('Completed', style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
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
                      Text('Dispatches', style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
                      Text('Earnings', style: TextStyle(color: Colors.white, fontSize: themeData.textTheme.bodyText1!.fontSize)),
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
                                title: 'WITHDRAW',
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
                    child: const Text(
                      'Dispatch a Hire to TaxiMe and earn highest commission',
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
                          'Dispatch',
                          style: TextStyle(color: ColorConstant.white, fontSize: themeData.textTheme.bodyText1!.fontSize),
                        ),
                        Text(
                          'History',
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
                    child: const Text(
                      'Dispatch a Hire to TaxiMe and earn highest commission',
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
                          'Dispatch',
                          style: TextStyle(color: ColorConstant.white, fontSize: themeData.textTheme.bodyText1!.fontSize),
                        ),
                        Text(
                          'History',
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
      ),*/
    );
  }
}
