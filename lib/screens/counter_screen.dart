import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 10;
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('CounterScreen')),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Numero de clicks',
              style: fontSize,
            ),
            Text(
              '$contador',
              style: fontSize,
            )
          ],
        ),
      ),
      //  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => {contador -= 1, setState(() => {})},
          ),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () => {contador = 0, setState(() => {})},
          ),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => {contador += 1, setState(() => {})},
          ),
        ],
      ),
    );
  }
}
