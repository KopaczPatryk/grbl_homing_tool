import 'package:freezed_annotation/freezed_annotation.dart';

part 'controls_page_state.f.freezed.dart';

@freezed
sealed class ControlsPageState with _$ControlsPageState {
  const factory ControlsPageState.idle({
    @Default(1000) int feedRate,
  }) = Idle;
}
