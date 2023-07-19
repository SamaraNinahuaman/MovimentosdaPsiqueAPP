import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfiguracoesPage extends StatefulWidget {
  const ConfiguracoesPage({super.key});

  @override
  State<ConfiguracoesPage> createState() => ConfiguracoesPageState();
}

class ConfiguracoesPageState extends State<ConfiguracoesPage> {
  late SharedPreferences storage;
  TextEditingController nomeUsuarioController = TextEditingController();
  String? nomeUsuario;
  bool receberNotificacoes = false;
  bool temaEscuro = false;

  final CHAVE_NOME_USUARIO = "CHAVE_NOME_USUARIO";
  final CHAVE_RECEBER_NOTIFICACOES = "CHAVE_RECEBER_NOTIFICACOES";
  final CHAVE_TEMA_ESCURO = "CHAVE_TEMA_ESCURO";

  @override
  void initState() {
    super.initState();
    carregarDados();
  }

  carregarDados() async {
    storage = await SharedPreferences.getInstance();
    setState(() {
      nomeUsuarioController.text = storage.getString(CHAVE_NOME_USUARIO) ?? "";
      receberNotificacoes =
          storage.getBool(CHAVE_RECEBER_NOTIFICACOES) ?? false;
      temaEscuro = storage.getBool(CHAVE_TEMA_ESCURO) ?? false;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Configurações")),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: const InputDecoration(hintText: "Nome Usuário"),
                controller: nomeUsuarioController,
              ),
            ),
            SwitchListTile(
              title: const Text("Receber notificações"),
              onChanged: (bool value) {
                setState(() {
                  receberNotificacoes = value;
                });
              },
              value: receberNotificacoes,
            ),
            SwitchListTile(
                title: const Text("Tema Escuro"),
                value: temaEscuro,
                onChanged: (bool value) {
                  setState(() {
                    temaEscuro = value;
                  });
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: ElevatedButton(
                  onPressed: () async {
                    FocusManager.instance.primaryFocus?.unfocus();
                    await storage.setString(
                        CHAVE_NOME_USUARIO, nomeUsuarioController.text);
                    await storage.setBool(
                        CHAVE_RECEBER_NOTIFICACOES, receberNotificacoes);
                    await storage.setBool(CHAVE_TEMA_ESCURO, temaEscuro);
                    Navigator.pop(context);
                  },
                  child: const Text("Salvar")),
            )
          ],
        ),
      ),
    );
  }
}
