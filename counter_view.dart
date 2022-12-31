import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Demo'),
      ),
      body: Column(
        children: [
          Text(
            'Counter Value is: ${counterModel.getCounter()}',
            style: const TextStyle(fontSize: 24.0),
          ),
          ElevatedButton.icon(
              onPressed: () => counterModel.incrementcounter(),
              icon: const Icon(Icons.add),
              label: const Text("Increment")),
          ElevatedButton.icon(
              onPressed: () => counterModel.decrementcounter(),
              icon: const Icon(Icons.remove),
              label: const Text("Decrement")),
        ],
      ),
    );
  }
}
