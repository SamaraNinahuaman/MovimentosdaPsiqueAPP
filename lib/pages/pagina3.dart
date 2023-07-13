import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/pagina1.dart';
import 'package:myfirstapp/pages/pagina2.dart';

class Pagina3Page extends StatefulWidget {
  const Pagina3Page({Key? key}) : super(key: key);

  @override
  State<Pagina3Page> createState() => _Pagina3State();
}

class _Pagina3State extends State<Pagina3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("")),
        body: const SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Internet e Tecnologias",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Samara Lopes Ninahuaman",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  // Resto do conteúdo do artigo...
                ],
              ),
            ),
          ),
        ));
  }
}
