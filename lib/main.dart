import 'package:flutter/material.dart';
import 'package:flutter_aula3_exer11/com_estado.dart';

void main() {
  //runApp(MainApp());
  runApp(ComEstado());
}

class MainApp extends StatelessWidget {
  String nome = "Fulano";
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  nome = "Ciclano";
                  print(nome);
                },
                child: const Text('Mostre Nome'),
              ),
              Text(nome)
            ],
          ),
        ),
      ),
    );
  }
}