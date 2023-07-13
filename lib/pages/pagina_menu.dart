import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/pagina1.dart';
import 'package:myfirstapp/pages/pagina2.dart';
import 'package:myfirstapp/pages/pagina3.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key, this.selectIndex});

  int? selectIndex;

  List<Widget> listaArtigos = [
    const Pagina1Page(), // Adicione os nomes específicos para cada página de artigo
    const Pagina2Page(),
    const Pagina3Page(),
  ];

  @override
  Widget build(BuildContext context) {
    final artigo =
        selectIndex == null ? listaArtigos[0] : listaArtigos[selectIndex!];
    return Scaffold(body: artigo);
  }
}
