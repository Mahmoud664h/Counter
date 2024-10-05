import 'package:counter/counter/counter_cubit.dart';
import 'package:counter/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
          return CounterCubit();
        },
        child: const MaterialApp(home: Screen()));
  }
}
