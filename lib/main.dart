import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohandrayhan/UI/SplashScreen/splash_screen.dart';
import 'package:rohandrayhan/Utils/localization_services.dart';
import 'package:rohandrayhan/Utils/memory.dart';
import 'package:rohandrayhan/Utils/transelation/app_transelation.dart';
void  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService.init(), permanent: true);
  Get.put(LocalizationService.init(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String shortcut = 'no action set';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: AppTranslations(),

      locale:  Get.find<LocalizationService>().activeLocale,
      supportedLocales: SupportedLocales.all,
      fallbackLocale: SupportedLocales.english,

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),

    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
