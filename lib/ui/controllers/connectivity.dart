import 'package:f_web_consumption/domain/use_cases/network_manager.dart';
import 'package:f_web_consumption/ui/pages/dectection/detection_page.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  final RxBool _connected = RxBool(false);
  final RxString _method = RxString('');

  bool get isConnected => _connected.value;
  String get connectionMethod => _method.value;
  Future<String> get connectivityMethod async {
    _method.value = (await NetworkManager.status).name;
    return _method.value;
  }

  @override
  void onInit() {
    super.onInit();
    NetworkManager.statusStream.listen(
      (result) async => _connected.value =
          await NetworkManager.isConnected(connectivityResult: result),
    );
    ever<bool>(_connected, (isConnected) {
      // TODO: Cuando el app se desconecte naveguen a la pagina de conexiones
    });
  }
}
