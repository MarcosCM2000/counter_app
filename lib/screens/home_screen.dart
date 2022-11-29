import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('HomeScreen')),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Numero de clicks',
              style: fontSize,
            ),
            Text(
              '0',
              style: fontSize,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => {},
      ),
    );
  }
}
