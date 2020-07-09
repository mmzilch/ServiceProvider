import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_service/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      //ViewModelProvider<CounterViewModel>.withConsumer(
      viewModelBuilder: () => CounterViewModel(),
      onModelReady: (model) => model.loadData(), //model == countVM
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Services'),
        ),
        body: Center(
          child: Text('${model.counter}'),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                model.increment();
              },
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                model.decrement();
              },
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
