import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const CounterScreen(),
    );
  }
}

//  StatefulWidget
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;


  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App - Assignment'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: _increaseCounter,
              tooltip: 'Add',
              child: const Icon(Icons.add),
            ),
            const SizedBox(width: 10),
            FloatingActionButton(
              onPressed: _decreaseCounter,
              tooltip: 'Subtract',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
