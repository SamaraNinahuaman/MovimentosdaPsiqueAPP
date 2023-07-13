import 'package:flutter/material.dart';
import 'package:myfirstapp/shared/widgets/custom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPagina = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Movimentos da Psiquê (MainPage)")),
        drawer: const CustomDrawer(),
        body: const Placeholder(),
      ),
    );
  }
}
