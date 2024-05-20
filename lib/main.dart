import 'package:flutter/material.dart';
import 'package:grbl_homing_tool/di.dart';
import 'package:grbl_homing_tool/pages/connection/connection_page.dart';
import 'package:hooked_bloc/hooked_bloc.dart';

Future<void> main() async {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HookedBlocConfigProvider(
      injector: () => getIt.get,
      child: MaterialApp(
        title: 'GRBL Homing Tool',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ConnectionPage(),
      ),
    );
  }
}
