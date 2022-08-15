import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkStatus {
  late final connectivity = Connectivity();

  Future<ConnectivityResult> get status => /* TODO: retorna el estado de conexion */;

  Stream<ConnectivityResult> get statusStream =>
      /* TODO: retorna el estado de conexion como stream */;
}
