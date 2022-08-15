import 'package:f_web_consumption/ui/controllers/connectivity.dart';
import 'package:f_web_consumption/ui/pages/web_consumption/web_consumption_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetworkDetectionPage extends GetView<NetworkController> {
  const NetworkDetectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network State'),
      ),
      body: FutureBuilder<String>(
        // TODO: Obten el metodo que se usta usando para conectarse a  internet
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) =>
            Center(
          child: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Metodo: ${controller.connectionMethod.toUpperCase()}'),
                ElevatedButton(
                  onPressed: /* TODO: desabilita el boton si se detecta descoexion */
                      () => Get.to(() => const WebConsumptionPage()),
                  child: const Text('Service Consumption'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
