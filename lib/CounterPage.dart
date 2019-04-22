import 'dart:async';
import 'package:bloc_tutorial/BlocProvider.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return CounterState();
  }
}

class CounterState extends State<CounterPage> {

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);

    return Scaffold(
      body: Center(
          child: StreamBuilder(
        initialData: 0,
        stream: bloc.counterValue,
        builder: (context, snapshot) {
          return Text('This button was pressed ${snapshot.data} times');
        },
      )),
      appBar: AppBar(
        title: Text("BLoC Architecture"),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Increment",
        child: Icon(Icons.add),
        onPressed: () {
          bloc.increment();
        },
      ),
    );
  }
}
