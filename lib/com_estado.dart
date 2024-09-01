import 'package:flutter/material.dart';

class ComEstado extends StatefulWidget {
  const ComEstado({super.key});

  @override
  State<ComEstado> createState() => _ComEstadoState();
}

class _ComEstadoState extends State<ComEstado> {
  String nome = "Fulano";
  double op = 0.5;
  int valor = 128;

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
                  setState(() {
                    nome = "Ciclano";
                    op = 1;
                    valor = 255;
                  });
                  print(nome);
                },
                child: const Text('Mostre Nome'),
              ),
              Opacity(
                opacity: op,
                child: Container(
                  child: Text(nome),
                ),
              ),
              Text(
                nome,
                style: TextStyle(color: Color.fromARGB(valor, 0, 0, 0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
