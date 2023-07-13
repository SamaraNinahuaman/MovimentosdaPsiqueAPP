import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(ArquivoNovo());
}

class ArquivoNovo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Arquivo novo"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: const Center(
          child: Column(
            children: [
              Text("Hello World"),
              Text("vamos dormir"),
              TextField(
                decoration: InputDecoration(labelText: "eee"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
