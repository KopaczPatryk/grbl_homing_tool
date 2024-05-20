import 'package:freezed_annotation/freezed_annotation.dart';

part 'controls_page_action.f.freezed.dart';

@freezed
sealed class ControlsPageAction with _$ControlsPageAction {
  const factory ControlsPageAction.receivedData({
    required String data,
  }) = OnDataReceived;
}
