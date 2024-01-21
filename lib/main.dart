import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:json_theme/json_theme.dart';

import 'core/app_export.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final lightThemeStr = await rootBundle.loadString('assets/theme_data/light.json');
  final lightThemeJson = jsonDecode(lightThemeStr);
  final lightTheme = ThemeDecoder.decodeThemeData(lightThemeJson)!;

  final darkThemeStr = await rootBundle.loadString('assets/theme_data/dark.json');
  final darkThemeJson = jsonDecode(darkThemeStr);
  final darkTheme = ThemeDecoder.decodeThemeData(darkThemeJson)!;

  Log.init(kReleaseMode ? LogMode.live : LogMode.debug);

  runApp(MyApp(
    lightTheme: lightTheme,
    darkTheme: darkTheme,
  ));

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.lightTheme, required this.darkTheme});

  final ThemeData lightTheme;
  final ThemeData darkTheme;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaxiMe Driver',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      translations: AppLocalization(),
      locale: Get.deviceLocale,
      //for setting localization strings
      fallbackLocale: const Locale('en', 'US'),
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
      /*initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => LoginScreen()),
        // GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
        GetPage(name: OPTVerifyScreen.routeName, page: () => OPTVerifyScreen()),
        GetPage(name: SignupScreenStep01.routeName, page: () => SignupScreenStep01()),
        GetPage(name: SignupScreenStep02.routeName, page: () => SignupScreenStep02()),
        GetPage(name: EditProfile.routeName, page: () => EditProfile()),
        GetPage(name: ApprovePendingScreen.routeName, page: () => ApprovePendingScreen()),
        GetPage(name: VehicleAddScreen.routeName, page: () => VehicleAddScreen()),
        GetPage(name: OPTVerifyScreen.routeName, page: () => OPTVerifyScreen()),
        GetPage(name: BankAccount.routeName, page: () => BankAccount()),
        GetPage(name: DispatcherScreen.routeName, page: () => DispatcherScreen()),
      ],*/
    );
  }
}
