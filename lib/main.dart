import 'package:f_web_consumption/ui/app.dart';
import 'package:f_web_consumption/ui/controllers/connectivity.dart';
import 'package:f_web_consumption/ui/controllers/content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(NetworkController());
  Get.lazyPut(() => ContentController(), fenix: true);
  runApp(const WebComsuptionApp());
}
