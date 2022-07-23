import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'pages/dectection/detection_page.dart';

class WebComsuptionApp extends StatelessWidget {
  const WebComsuptionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Web Consumption App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NetworkDetectionPage(),
    );
  }
}
