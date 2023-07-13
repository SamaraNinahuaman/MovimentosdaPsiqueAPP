import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/pagina_menu.dart';
import 'package:myfirstapp/tools/myroutes.dart';

class BlogMain extends StatefulWidget {
  const BlogMain({super.key});

  @override
  State<BlogMain> createState() => _BlogMainState();
}

class _BlogMainState extends State<BlogMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Blog")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: double.infinity,
              child: Card(
                elevation: 8,
                shadowColor: Colors.black,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            "https://images.unsplash.com/photo-1502139214982-d0ad755818d8?auto=format&fit=crop&w=945&h=792",
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Estresse Pós-Traumático",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "O estresse saudável é uma reação de defesa do organismo frente a um estímulo, que pode ser real ou imaginário. Esse estímulo é percebido como perigoso ou ameaçador e o corpo se prepara para fugir, lutar ou congelar. Se ele não existisse não iriamos conseguir reagir as demandas do dia a dia e estaríamos completamente vulneráveis.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 14)),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MenuPage(selectIndex: 2),
                            ),
                          ),
                          child: const Text(
                            "Clique Aqui!",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: double.infinity,
              child: Card(
                elevation: 8,
                shadowColor: Colors.black,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            "https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=945,h=792,fit=crop/dOqXv6XrWwfR2JgK/padrc3a3o-de-estresse-1-d95Eqo2ZpacwDNy8.jpg",
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Passando pela COVID-19",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Neste cenário que estamos vivendo existem pessoas que estão ficando paranoicas e pessoas que estão em total negação. Estas duas reações mostram um sistema nervoso central bagunçado com todos estes estímulos intensos que estão ocorrendo ao mesmo tempo.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 14)),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MenuPage(selectIndex: 1),
                            ),
                          ),
                          child: const Text(
                            "Clique Aqui!",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: double.infinity,
              child: Card(
                elevation: 8,
                shadowColor: Colors.black,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.network(
                            "https://movimentosdapsique.files.wordpress.com/2017/09/campanhacrescer1.jpg",
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Internet e Tecnologias",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Acho bastante interessante pensar sobre este assunto, já que é bastante atual e pode ser tanto uma gigantesca ferramenta para o crescimento como pode ser a tragédia na vida de muitas pessoas.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 14)),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MenuPage(selectIndex: 0),
                            ),
                          ),
                          child: const Text(
                            "Clique Aqui!",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
