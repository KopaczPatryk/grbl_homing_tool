import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_page_state.f.freezed.dart';

@freezed
sealed class ConnectionPageState with _$ConnectionPageState {
  const factory ConnectionPageState.initial() = Initial;
  const factory ConnectionPageState.loading() = Loading;
  const factory ConnectionPageState.loaded({
    required List<String> ports,
  }) = Loaded;
}
