import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class INetworkInfo {
  Future<bool> get isConnected;
}

@Singleton(as: INetworkInfo)
class NetworkInfoImpl implements INetworkInfo {
  final InternetConnection internetConnection;

  const NetworkInfoImpl(this.internetConnection);

  @override
  Future<bool> get isConnected async {
    try {
      return await InternetConnection().hasInternetAccess;
    } catch (e) {
      return false;
    }
  }
}
