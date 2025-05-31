import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {

  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter page"),
      ),
      body: Center(
        child: Text("Counter value => $counter"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                ++counter;
              });
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 8,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                --counter;
              });
            },
            child: Icon(Icons.remove),
          )
        ],
      )
    );
  }
}
