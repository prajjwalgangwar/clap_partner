import 'package:clap_partner/Routes.dart';
import 'package:clap_partner/controllers/networkController.dart';
import 'package:clap_partner/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: NetworkBinding(),
      getPages: AppRoutes.routes,
      title: 'Flutter Demo',
      home: Home()
    );
  }
}

