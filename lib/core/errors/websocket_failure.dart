import 'package:freezed_annotation/freezed_annotation.dart';

part 'websocket_failure.freezed.dart';

@freezed
class WebsocketFailure with _$WebsocketFailure {
  const factory WebsocketFailure.connectionRefused([String? error]) = SocketConnectionRefused;
  const factory WebsocketFailure.error(String error) = SocketError;
  const factory WebsocketFailure.unknown([String? error]) = SocketUnknownError;
}
