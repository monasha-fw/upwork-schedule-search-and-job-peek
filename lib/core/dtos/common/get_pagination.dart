import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_pagination.freezed.dart';

@freezed
class GetPagination with _$GetPagination {
  const factory GetPagination({
    String? search,
    @Default(0) int offset,
    @Default(10) int limit,
  }) = _GetPagination;
}
