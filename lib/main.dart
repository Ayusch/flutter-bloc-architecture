import 'package:flutter/material.dart';
import 'package:bloc_tutorial/CounterPage.dart';
import 'package:bloc_tutorial/BlocProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue),
        home: CounterPage(title: "Bloc"),
      ),
    );
  }
}
