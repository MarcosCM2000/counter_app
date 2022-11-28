//  Importaciones de flutter y material
import 'package:flutter/material.dart';
//  Paquetes de terceros
//  Codigo
import 'package:counter_app/screens/home_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
