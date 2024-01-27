part of 'infra_exceptions.dart';

NetworkFailure _getDioException(error) {
  NetworkFailure networkFailure;
  if (error is DioException) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        networkFailure = const NetworkFailure.requestTimeout();
        break;
      case DioExceptionType.badCertificate:
        networkFailure = const NetworkFailure.badCertificate();
        break;
      case DioExceptionType.badResponse:
        networkFailure = const NetworkFailure.badResponse();
        break;
      case DioExceptionType.cancel:
        networkFailure = const NetworkFailure.requestCancelled();
        break;
      case DioExceptionType.connectionError:
        networkFailure = const NetworkFailure.connectionError();
        break;
      case DioExceptionType.unknown:
        switch (error.response?.statusCode) {
          case 400:
            networkFailure = NetworkFailure.unauthorisedRequest(error.response?.data);
            break;
          case 401:
            networkFailure = NetworkFailure.unauthorisedRequest(error.response?.data);
            break;
          case 403:
            networkFailure = NetworkFailure.unauthorisedRequest(error.response?.data);
            break;
          case 404:
            networkFailure = NetworkFailure.notFound(error);
            break;
          case 409:
            networkFailure = const NetworkFailure.conflict();
            break;
          case 408:
            networkFailure = const NetworkFailure.requestTimeout();
            break;
          case 500:
            networkFailure = const NetworkFailure.internalServerError();
            break;
          case 503:
            networkFailure = const NetworkFailure.serviceUnavailable();
            break;
          default:
            final responseCode = error.response?.statusCode;
            networkFailure =
                NetworkFailure.defaultError('Received invalid status code: $responseCode');
        }
        break;
    }
  } else if (error is SocketException) {
    networkFailure = const NetworkFailure.noInternetConnection();
  } else {
    //   networkFailure = NetworkFailure.unexpectedError(error);
    throw error;
  }
  return networkFailure;
}
