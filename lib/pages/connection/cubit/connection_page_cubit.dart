import 'package:grbl_homing_tool/domain/serial_port_repository.dart';
import 'package:grbl_homing_tool/pages/connection/cubit/connection_page_action.f.dart';
import 'package:grbl_homing_tool/pages/connection/cubit/connection_page_state.f.dart';
import 'package:hooked_bloc/hooked_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ConnectionPageCubit
    extends ActionCubit<ConnectionPageState, ConnectionPageAction> {
  ConnectionPageCubit(
    this._serialPortRepository,
  ) : super(
          const ConnectionPageState.initial(),
        );

  final SerialPortRepository _serialPortRepository;

  void init() {
    refresh();
  }

  void refresh() {
    emit(const Loading());
    final ports = _serialPortRepository.discover();
    emit(Loaded(ports: ports));
  }

  void connectTo(String port) {
    final connectedPort = _serialPortRepository.connect(port);

    if (connectedPort != null) {
      dispatch(
        ConnectionPageAction.onConnected(
          port: port,
        ),
      );
    } else {
      dispatch(
        const ConnectionPageAction.notConnected(),
      );
    }
  }
}
