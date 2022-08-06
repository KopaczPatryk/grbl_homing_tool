import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:grbl_homing_tool/screens/discovery_screen.dart';
import 'package:grbl_homing_tool/utils/port_extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homing TOOL',
      theme: ThemeData.light(),
      home: const Scaffold(
        body: DiscoveryScreen(),
      ),
    );
  }
}

class GCodeSender extends StatelessWidget {
  final TextEditingController _controller;

  GCodeSender({
    Key? key,
  })  : _controller = TextEditingController(),
        super(key: key);

  void send(BuildContext context) {
    final port = SerialPort('COM5');
    port.openReadWrite();
    port.writeText('\r\n\r\n');
    port.move(x: 10);

    sleep(const Duration(milliseconds: 5));
    port.flush();
    // port.printDetails();
    // port.printCfg();
    // port.setStandardCfg();

    // final reader = SerialPortReader(port);
    // var listen = reader.stream.listen((data) {
    //   print('received: $data');
    // });

    // listen.cancel();
    port.close();

    // final text = _controller.text;

    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //   content: Text(text),
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(controller: _controller),
        TextButton(
          onPressed: () => send(context),
          child: const Text('Send'),
        ),
      ],
    );
  }
}
