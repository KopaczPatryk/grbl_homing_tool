import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';

import 'homing/homing_screen.dart';

class DiscoveryCubit extends Cubit<List<String>> {
  late final Timer _timer;

  DiscoveryCubit() : super(['FAKE']) {
    _init();
  }

  void _init() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _discover(),
    );
  }

  void _discover() {
    emit(SerialPort.availablePorts..add('FAKE'));
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (context) => DiscoveryCubit(),
          child: BlocBuilder<DiscoveryCubit, List<String>>(
            builder: (context, state) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Searching for devices ${state.length} found'),
                ...state
                    .map(
                      (e) => TextButton.icon(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomingScreen(port: e),
                          ),
                        ),
                        icon: const Icon(Icons.usb),
                        label: Text(e),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
