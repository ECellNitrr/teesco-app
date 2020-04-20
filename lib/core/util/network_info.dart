import 'package:data_connection_checker/data_connection_checker.dart';

/// Abstract Utility class to check internet connection by opening 
/// a socket to a list of specific address each with individual port and timeout.
class NetworkInfo {
  final DataConnectionChecker connectionChecker;

  NetworkInfo(this.connectionChecker);

  Future<bool> get isConnected => connectionChecker.hasConnection;
}
