import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'di/DI.dart';
import 'presentation/CounterView.dart';
import 'presentation/CounterViewModel.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CounterViewModel(DI.getCounter()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MVVM Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterView(),
    );
  }
}
