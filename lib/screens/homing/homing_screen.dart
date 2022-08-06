// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grbl_homing_tool/widgets/landmark_button.dart';

import 'homing_controls.dart';

class HomingState {
  final bool isLifted;
  final double? x;
  final double? y;

  HomingState({
    required this.isLifted,
    required this.x,
    required this.y,
  });
}

class HomingCubit extends Cubit<HomingState> {
  HomingCubit()
      : super(HomingState(
          isLifted: false,
          x: null,
          y: null,
        ));
}

class HomingScreen extends StatelessWidget {
  final String port;

  const HomingScreen({
    Key? key,
    required this.port,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connected to $port'),
      ),
      body: Stack(children: [
        LandmarkButton(
          onPressed: () {},
          label: '5 cm',
        ),
        Center(
          child: HomingControls(),
        ),
        Positioned(
          right: 0,
          child: LandmarkButton(
            onPressed: () {},
            label: 'Top right',
          ),
        ),
        Positioned(
          bottom: 0,
          child: LandmarkButton(
            onPressed: () {},
            label: 'Top right',
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: LandmarkButton(
            label: 'Top right',
          ),
        ),
      ]),
    );
  }
}
