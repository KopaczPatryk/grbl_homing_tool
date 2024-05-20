import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grbl_homing_tool/pages/controls/cubit/controls_page_cubit.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

class ControlsPage extends HookWidget {
  const ControlsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<ControlsPageCubit>();

    return PopScope(
      onPopInvoked: (didPop) => didPop ? cubit.disconnect() : null,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Homing controls'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: cubit.setAbsoluteCoordinates,
                    child: const Text('Setup absolute positioning'),
                  ),
                  TextButton(
                    onPressed: cubit.homeXY,
                    child: const Text(
                      'Home XY',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: [
                          TextButton(
                            onPressed: cubit.moveToBackLeft,
                            child: const Text('1. Move to back left'),
                          ),
                          TextButton(
                            onPressed: cubit.moveToBackRight,
                            child: const Text(' 4. Move to back right'),
                          ),
                          TextButton(
                            onPressed: cubit.moveToFrontLeft,
                            child: const Text('3. Move to front left'),
                          ),
                          TextButton(
                            onPressed: cubit.moveToFrontRight,
                            child: const Text('2. Move to front right'),
                          ),
                        ],
                      ),
                    ),
                    _ExtruderControls(
                      cubit: cubit,
                    ),
                  ],
                ),
              ),
              Row(
                children: [1000, 3000, 5000]
                    .map(
                      (feedRate) => TextButton(
                        onPressed: () => cubit.setFeedRate(feedRate),
                        child: Text('Set feed rate: $feedRate'),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ExtruderControls extends StatelessWidget {
  const _ExtruderControls({
    required this.cubit,
  });
  final ControlsPageCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => cubit.setHeadHeight(5.0),
          child: const Text(
            'Lift head to 5mm',
            textAlign: TextAlign.center,
          ),
        ),
        TextButton(
          onPressed: () => cubit.homeHead(),
          child: const Text(
            'Home head',
            textAlign: TextAlign.center,
          ),
        ),
        ...[0.3, 0.2, 0.1, 0.0]
            .map((clearance) => TextButton(
                  onPressed: () => cubit.setHeadHeight(clearance),
                  child: Text(
                    'Lower head to\n$clearance',
                    textAlign: TextAlign.center,
                  ),
                ))
            .toList(),
      ],
    );
  }
}
