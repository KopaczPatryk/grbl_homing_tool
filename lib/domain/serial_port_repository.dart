import 'dart:async';
import 'dart:developer';

import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@singleton
class SerialPortRepository {
  final _availablePortsStreamController = PublishSubject<List<String>>();

  SerialPort? _connectedPort;
  SerialPort? get connectedPort => _connectedPort;

  Stream<List<String>> get serialPortStream =>
      _availablePortsStreamController.stream;

  StreamSubscription? _readSerialStreamSub;

  List<String> discover() {
    final ports = SerialPort.availablePorts;
    return ports;
  }

  SerialPort? connect(String port) {
    final serialPort = SerialPort(port);

    // perform config for Ender 3 Pro v1 from 2018
    final config = serialPort.config;
    config.baudRate = 115200;
    config.bits = 8;
    config.parity = 0;
    config.stopBits = 1;

    final reader = SerialPortReader(serialPort);

    _readSerialStreamSub = reader.stream.listen((event) {
      log('Received: ${String.fromCharCodes(event)}');
    });

    final isOpened = serialPort.openReadWrite();
    if (isOpened) {
      _connectedPort = serialPort;
      return serialPort;
    } else {
      return null;
    }
  }

  Future<void> disconnect() async {
    _readSerialStreamSub?.cancel();
    connectedPort?.close();
    connectedPort?.dispose();
    _connectedPort = null;
  }
}
