import 'package:flutter/material.dart';
import 'package:myfirstapp/tools/myroutes.dart';

class SalaAtendimento extends StatefulWidget {
  const SalaAtendimento({super.key});

  @override
  State<SalaAtendimento> createState() => _SalaAtendimentoState();
}

class _SalaAtendimentoState extends State<SalaAtendimento> {
  var chaveAtendimentoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const valor = AuthenticatorHelper.userAuthenticator;

    return Scaffold(
      appBar: AppBar(title: const Text("Sala de Atendimento")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          children: [
            const Text(
              "Insira a sua chave de entrada:",
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              controller: chaveAtendimentoController,
            ),
            ElevatedButton(
                onPressed: () {
                  if (valor.containsValue(chaveAtendimentoController.text)) {
                    print("Acesso Liberado!");
                  } else {
                    print("Acesso Negado");
                  }
                },
                child: const Text("Enviar")),
          ],
        ),
      ),
    );
  }
}
