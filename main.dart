import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';
import 'counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: ChangeNotifierProvider<CounterModel>(
          create: (_) => CounterModel(),
          child: CounterView(),
        ));
  }
}
