import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:grbl_homing_tool/domain/serial_port_repository.dart';
import 'package:grbl_homing_tool/pages/controls/cubit/controls_page_action.f.dart';
import 'package:grbl_homing_tool/pages/controls/cubit/controls_page_state.f.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ControlsPageCubit
    extends ActionCubit<ControlsPageState, ControlsPageAction> {
  ControlsPageCubit(
    this._portRepository,
  ) : super(const ControlsPageState.idle());

  final SerialPortRepository _portRepository;

  int get feedRate => state is Idle ? (state as Idle).feedRate : 3000;

  Future<void> _maybeWriteString(String text) async {
    await _wakeUp();

    log('Writing $text');
    _rawWrite(text);
  }

  Future<void> _wakeUp() async {
    log('Waking up');
    final port = _portRepository.connectedPort;
    port?.drain();
    _rawWrite('\r\n');
  }

  void _rawWrite(String text) {
    final data = Uint8List.fromList(text.codeUnits);
    final port = _portRepository.connectedPort;
    try {
      port?.write(data, timeout: 0);
    } on SerialPortError catch (osError) {
      log("SerialPortError: ${osError.message}");
    }
  }

  Future<void> setAbsoluteCoordinates() async {
    await _maybeWriteString('G90');
  }

  Future<void> homeXY() async {
    await _maybeWriteString('G28 X Y R10');
    await _maybeWriteString('G92 E1');
  }

  Future<void> disconnect() async {
    await _portRepository.disconnect();
  }

  Future<void> moveToBackLeft() async {
    await _maybeWriteString('G1 X30 Y200 Z5 F$feedRate');
  }

  Future<void> moveToBackRight() async {
    await _maybeWriteString('G1 X200 Y200 Z5 F$feedRate');
  }

  Future<void> moveToFrontLeft() async {
    await _maybeWriteString('G1 X30 Y40 Z5 F$feedRate');
  }

  Future<void> moveToFrontRight() async {
    await _maybeWriteString('G1 X200 Y40 Z5 F$feedRate');
  }

  void setFeedRate(int feedRate) {
    emit(
      state.copyWith(feedRate: feedRate),
    );
  }

  Future<void> homeHead() async {
    await _maybeWriteString('G28 Z');
  }

  Future<void> setHeadHeight(double clearance) async {
    await _maybeWriteString('G1 Z$clearance F$feedRate');
  }
}
