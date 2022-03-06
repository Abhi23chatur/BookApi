import 'package:book_app/routes/app_pages.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Book/Application/Binding/Book_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      locale: const Locale('en', 'US'),
      initialRoute: AppPages.initial,
      initialBinding: HomePageBinding()

    );
}
}