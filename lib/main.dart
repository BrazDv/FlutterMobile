import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void decrement() {
    // Defina aqui a lógica para decrementar
    print('Decrement pressed');
  }

  void increment() {
    // Defina aqui a lógica para incrementar
    print('Increment pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pode Entrar!',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                child: const Text('Saiu'),
                style: TextButton.styleFrom(),
              ),
              TextButton(
                onPressed: increment,
                child: const Text('Entrou'),
                style: TextButton.styleFrom(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
