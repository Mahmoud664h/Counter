import 'package:counter/counter/counter_cubit.dart';
import 'package:counter/counter/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: BlocConsumer<CounterCubit, CounterStates>(
            listener: (context, state) {
          if (state is CounterDecrementState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('decrement'),
                backgroundColor: Colors.red,
                duration: Duration(milliseconds: 500)));
          } else if (state is CounterIncrementState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('increment'),
              backgroundColor: Colors.green,
              duration: Duration(milliseconds: 500),
            ));
          } else if (state is CounterRestState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Rest Counter'),
              backgroundColor: Colors.yellow,
              duration: Duration(milliseconds: 500),
            ));
          }
        }, builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        context.read<CounterCubit>().decrementCounter();
                      },
                      icon: const Icon(Icons.remove)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '${context.read<CounterCubit>().count}',
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        context.read<CounterCubit>().incrementCounter();
                      },
                      icon: const Icon(Icons.add)),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().restCounter();
                  },
                  child: const Text('rest')),
            ],
          );
        }),
      ),
    );
  }
}
