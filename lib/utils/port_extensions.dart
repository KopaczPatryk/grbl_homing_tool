// ignore_for_file: avoid_print

import 'dart:math';
import 'dart:typed_data';

import 'package:flutter_libserialport/flutter_libserialport.dart';

Uint8List encodeText(String text) {
  return Uint8List.fromList(text.codeUnits);
}

extension PortExtensions on SerialPort {
  void printCfg() {
    print('BaudRate: ${config.baudRate}');
    print('Bits: ${config.bits}');
    print('Parity: ${config.parity}');
    print('StopBits: ${config.stopBits}');
  }

  void printDetails() {
    print('PORT - name: $name');
    print('PORT - description: $description');
    print('PORT - productId: $productId');
    print('PORT - productName: $productName');
    print('PORT - manufacturer: $manufacturer');
    print('PORT - busNumber: $busNumber');
  }

  void printBuffers() {
    print('PORT - Bytes available: $bytesAvailable');
    print('PORT - Bytes to write: $bytesToWrite');
  }

  void setStandardCfg() {
    config.baudRate = 115200;
    config.bits = 8;
    config.parity = SerialPortParity.none;
    config.stopBits = 1;
    config = config;
  }

  void writeText(String text) {
    print('--- WRITING ---');
    final writtenCount = write(encodeText(text), timeout: 0);

    print('Written count $writtenCount');
    print('To write $bytesToWrite');

    print('To read $bytesAvailable');
    if (bytesAvailable == -1) {
      print('No response');
    } else {
      final resp = read(min(128, bytesAvailable));
      final response = String.fromCharCodes(resp);
      print('Response: $response');
    }
  }

  void move({int? x = 0, int? y = 0}) => writeText('G91X${x}Y$y');
}
