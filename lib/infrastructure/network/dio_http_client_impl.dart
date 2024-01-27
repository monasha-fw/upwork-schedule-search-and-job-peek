import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/i18n/translations.g.dart';
import 'package:schedule_search_and_job_peek/infrastructure/network/index.dart';

@Singleton(as: IHttpClient)
class DioHttpClientImpl implements IHttpClient {
  final Dio _client;
  final INetworkInfo networkInfo;
  final DioAdapter dioAdapter;

  DioHttpClientImpl(this._client, this.networkInfo, this.dioAdapter) {
    /// [NOTE] - Mocks only for testing without a server
    // _client.httpClientAdapter = dioAdapter;
    // mockInit(dioAdapter);
  }

  /// internet connectivity check
  Future<void> _checkInternetConnectivity() async {
    if (!(await networkInfo.isConnected)) {
      throw SocketException(t.errors.common.failures.noInternet);
    }
  }

  @override
  Future delete(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? data,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    await _checkInternetConnectivity();

    try {
      return _client.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } on FormatException catch (_) {
      throw const FormatException();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    await _checkInternetConnectivity();

    final newOptions = options ?? Options(contentType: Headers.jsonContentType);

    return _client.get(
      uri,
      queryParameters: queryParameters,
      options: newOptions,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }

  @override
  Future patch(
    String uri, {
    required Map<String, dynamic> data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    await _checkInternetConnectivity();

    try {
      return _client.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on FormatException catch (_) {
      throw const FormatException();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future post(
    String uri, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    await _checkInternetConnectivity();

    try {
      final newOptions = options ?? Options(contentType: Headers.jsonContentType);

      return _client.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: newOptions,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on FormatException catch (_) {
      throw const FormatException();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future put(
    String uri, {
    required Map<String, dynamic> data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    ProgressCallback? onSendProgress,
  }) async {
    await _checkInternetConnectivity();

    try {
      return _client.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } on FormatException catch (_) {
      throw const FormatException();
    } catch (e) {
      rethrow;
    }
  }
}
