import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkStatus {
  late final connectivity = Connectivity();

  Future<ConnectivityResult> get status => connectivity.checkConnectivity();

  Stream<ConnectivityResult> get statusStream =>
      connectivity.onConnectivityChanged;
}
