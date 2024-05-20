import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:grbl_homing_tool/pages/connection/cubit/connection_page_action.f.dart';
import 'package:grbl_homing_tool/pages/connection/cubit/connection_page_cubit.dart';
import 'package:grbl_homing_tool/pages/connection/cubit/connection_page_state.f.dart';
import 'package:grbl_homing_tool/pages/controls/controls_page.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

class ConnectionPage extends HookWidget {
  const ConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<ConnectionPageCubit>();
    final state = useBlocBuilder(cubit);

    useActionListener(cubit, (action) {
      switch (action) {
        case OnNotConnected():
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to connect'),
            ),
          );
        case OnConnected():
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ControlsPage(),
            ),
          );
      }
    });

    useEffect(() {
      cubit.init();

      return null;
    }, [cubit]);

    return Scaffold(
      body: switch (state) {
        Initial() || Loading() => const Center(
            child: CircularProgressIndicator(),
          ),
        Loaded(:final ports) => ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              ...ports.isNotEmpty
                  ? ports
                      .map(
                        (port) => _PortRow(
                          port: port,
                          onTap: cubit.connectTo,
                        ),
                      )
                      .toList()
                  : [
                      const Text(
                        'No ports',
                        textAlign: TextAlign.center,
                      ),
                    ],
              TextButton(
                onPressed: cubit.refresh,
                child: const Text('Refresh list'),
              ),
            ],
          ),
      },
    );
  }
}

class _PortRow extends StatelessWidget {
  const _PortRow({
    required this.port,
    required this.onTap,
  });

  final String port;
  final ValueSetter<String> onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap(port),
      child: Text(
        'Connect to $port',
        textAlign: TextAlign.center,
      ),
    );
  }
}
