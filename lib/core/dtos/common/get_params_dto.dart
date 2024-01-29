import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_params_dto.freezed.dart';

@freezed
class GetParamsDto with _$GetParamsDto {
  const factory GetParamsDto({
    String? search,
    @Default(0) int offset,
    @Default(10) int limit,
  }) = _GetParamsDto;
}
