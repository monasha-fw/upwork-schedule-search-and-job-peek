import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:schedule_search_and_job_peek/core/errors/index.dart';
import 'package:schedule_search_and_job_peek/i18n/translations.g.dart';
import 'package:schedule_search_and_job_peek/logger.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'dio_exceptions.dart';
part 'infra_exceptions.freezed.dart';

@freezed
class InfraExceptions with _$InfraExceptions {
  const InfraExceptions._();

  const factory InfraExceptions() = _InfraExceptions;

  static Failure exceptionToFailure(dynamic error) {
    /// ignorable errors - mostly just to notify when debugging
    if (error is ConnectionFailureError) {
      loggerNoStack.i('[InfraExceptions] [FAILURE] $error');
      return const Failure.networkFailure(NetworkFailure.connectionError());
    }

    /// major exceptions/ errors and failures
    logger.e('[InfraExceptions] [FAILURE] $error');
    if (error is UnexpectedValueError) {
      return Failure.unableToProcess(
        error.valueFailure.failedValue?.toString() ?? t.errors.common.failures.somethingWentWrong,
      );
    } else if (error is PlatformException) {
      return _getPlatformException(error);
    }

    /// plugin exceptions
    else if (error is WebSocketChannelException) {
      return _getWebsocketException(error);
    } else if (error is Exception) {
      try {
        return Failure.networkFailure(_getDioException(error));
      } on FormatException catch (e) {
        return Failure.formatException(e.message);
      } catch (ex) {
        return Failure.unexpectedError(ex.toString());
      }
    } else {
      /// custom features' failures
      if (error is AuthFailure) {
        return Failure.authFailure(error);
      } else if (error is CacheFailure) {
        return Failure.cacheFailure(error);
      } else if (error is NetworkFailure) {
        return Failure.networkFailure(error);
      } else if (error is SettingsFailure) {
        return Failure.settingsFailure(error);
      } else if (error is WebsocketFailure) {
        return Failure.websocketFailure(error);
      } else if (error.toString().contains('is not a subtype of')) {
        return Failure.unableToProcess(error.toString());
      } else {
        return Failure.unexpectedError(error.toString());
      }
    }
  }

  static Failure _getPlatformException(error) {
    late Failure failure;
    switch (error.code) {
      // case "sign_in_failed":
      //   failure = Failure.authFailure(AuthFailure.somethingWentWrong(message: t.errors.failures.auth.googleSignIn));
      //   break;
      default:
        failure = Failure.unexpectedError(error);
    }
    return failure;
  }

  static Failure _getWebsocketException(WebSocketChannelException error) {
    var failure = Failure.websocketFailure(WebsocketFailure.unknown(error.message));

    if (error.inner is WebSocketChannelException) {
      if ((error.inner as WebSocketChannelException).inner is SocketException) {
        final socketError = (error.inner as WebSocketChannelException).inner as SocketException;

        if (socketError.message == 'Connection refused') {
          failure = Failure.websocketFailure(
            WebsocketFailure.connectionRefused(t.errors.common.failures.websocketConnectionRefused),
          );
        }
        // TODO - complete if any
      }
    }

    return failure;
  }
}
