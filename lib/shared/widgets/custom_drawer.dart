import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/dados_cadastrais.dart';
// import 'package:myfirstapp/pages/sala_atendimento.dart';
import 'package:myfirstapp/tools/myroutes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  context: context,
                  builder: (BuildContext bc) {
                    return Wrap(
                      children: [
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: const Text("Camera"),
                          leading: Icon(Icons.camera),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          title: const Text("Galeria"),
                          leading: Icon(Icons.photo_album),
                        ),
                      ],
                    );
                  });
            },
            child: const UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 18, 32, 183)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://assets.zyrosite.com/cdn-cgi/image/format=auto,w=945,h=790,fit=crop/dOqXv6XrWwfR2JgK/fotoperfil-AzGyL1rrELuJoWvd.jpg",
                ),
              ),
              accountName: Text("Samara Ninahuaman"),
              accountEmail: Text("email@email.com"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Dados Cadastrais"),
                    ],
                  )),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DadosCadastrais()));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      Icon(Icons.meeting_room),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Sala de Atendimento"),
                    ],
                  )),
            ),
            // onTap: () {
            //   Navigator.pop(context);
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => GoogleMeetScreen()));
            // },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Agendamentos"),
                  ],
                )),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Pagamentos"),
                  ],
                )),
            onTap: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.menu_book),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Blog"),
                  ],
                )),
            onTap: () {
              Navigator.of(context).popAndPushNamed(kBLOGMAIN);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                child: const Row(
                  children: [
                    Icon(Icons.exit_to_app),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Sair"),
                  ],
                )),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext bc) {
                  return AlertDialog(
                    alignment: Alignment.centerLeft,
                    elevation: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    title: const Text("Deseja sair?"),
                    content: const Wrap(
                      children: [
                        Text("Selecione sua opção:"),
                      ],
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Não")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).popAndPushNamed(kLOGINPAGE);
                          },
                          child: const Text("Sim")),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
