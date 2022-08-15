import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:f_web_consumption/device/network.dart';

abstract class NetworkManager {
  static final _networService = NetworkStatus();

  static Future<ConnectivityResult> get status => _networService.status;

  static Stream<ConnectivityResult> get statusStream =>
      _networService.statusStream;

  static Future<bool> isConnected(
      {ConnectivityResult? connectivityResult}) async {
    /* TODO: retorna [true] si el metodo es mobile o wifi */
  }
}
