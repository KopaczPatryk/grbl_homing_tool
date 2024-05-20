import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_page_action.f.freezed.dart';

@freezed
sealed class ConnectionPageAction with _$ConnectionPageAction {
  const factory ConnectionPageAction.notConnected() = OnNotConnected;
  const factory ConnectionPageAction.onConnected({
    required String port,
  }) = OnConnected;
}
