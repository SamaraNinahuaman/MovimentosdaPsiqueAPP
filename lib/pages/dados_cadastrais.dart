import 'package:flutter/material.dart';
import 'package:myfirstapp/repositories/genero_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repositories/modalidades_repository.dart';
import '../shared/widgets/text_label.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({Key? key}) : super(key: key);

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  late String? nome;
  late String? contato;
  DateTime? dataNascimento;

  final nomeController = TextEditingController(text: "");
  final contatoController = TextEditingController(text: "");
  final dataNascimentoController = TextEditingController(text: "");
  final generoRepository = GeneroRepository();
  final modalidadesRepository = ModalidadesRepository();
  List<String> modalidadesSelecionadas = [];
  var genero = [];
  var modalidades = [];
  var generoSelecionado = "";
  late SharedPreferences storage;
  final String CHAVE_DADOS_CADASTRAIS_NOME = "CHAVE_DADOS_CADASTRAIS_NOME";
  final String CHAVE_DADOS_CADASTRAIS_CONTATO =
      "CHAVE_DADOS_CADASTRAIS_CONTATO";
  final String CHAVE_DADOS_CADASTRAIS_DATANASCIMENTO =
      "CHAVE_DADOS_CADASTRAIS_DATANASCIMENTO";
  final String CHAVE_DADOS_CADASTRAIS_GENERO = "CHAVE_DADOS_CADASTRAIS_GENERO";
  final String CHAVE_DADOS_CADASTRAIS_MODALIDADEATENDIMENTO =
      "CHAVE_DADOS_CADASTRAIS_MODALIDADEATENDIMENTO";

  bool salvando = false;

  @override
  void initState() {
    genero = generoRepository.retornaGenero();
    modalidades = modalidadesRepository.retornaModalidades();
    super.initState();
    carregarDados();
  }

  carregarDados() async {
    storage = await SharedPreferences.getInstance();
    setState(() {
      nomeController.text =
          storage.getString(CHAVE_DADOS_CADASTRAIS_NOME) ?? "";
      contatoController.text =
          storage.getString(CHAVE_DADOS_CADASTRAIS_CONTATO) ?? "";
      dataNascimentoController.text =
          storage.getString(CHAVE_DADOS_CADASTRAIS_DATANASCIMENTO) ?? "";
      generoSelecionado =
          storage.getString(CHAVE_DADOS_CADASTRAIS_GENERO) ?? "";
      modalidadesSelecionadas =
          storage.getStringList(CHAVE_DADOS_CADASTRAIS_MODALIDADEATENDIMENTO) ??
              <String>[];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meus Dados")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: salvando
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  const TextLabel(texto: "Nome Completo:"),
                  TextField(
                    controller: nomeController,
                  ),
                  const TextLabel(texto: "Contato: (whatsapp)"),
                  TextField(
                    controller: contatoController,
                  ),
                  const TextLabel(texto: "Data de Nascimento:"),
                  TextField(
                    controller: dataNascimentoController,
                    readOnly: true,
                    onTap: () async {
                      var data = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1930, 1, 1),
                          lastDate: DateTime.now());
                      if (data != null) {
                        dataNascimentoController.text = data.toString();
                        dataNascimento = data;
                      }
                    },
                  ),
                  const TextLabel(texto: "Gênero:"),
                  Column(
                    children: genero
                        .map(
                          (genero) => RadioListTile(
                            dense: true,
                            title: Text(genero.toString()),
                            selected: generoSelecionado == genero,
                            value: genero.toString(),
                            groupValue: generoSelecionado,
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                generoSelecionado = value.toString();
                              });
                            },
                          ),
                        )
                        .toList(),
                  ),
                  const TextLabel(texto: "Modalidades de Atendimento:"),
                  Column(
                    children: modalidades
                        .map(
                          (modalidade) => CheckboxListTile(
                            dense: true,
                            title: Text(modalidade),
                            value: modalidadesSelecionadas.contains(modalidade),
                            onChanged: (bool? value) {
                              if (value!) {
                                setState(() {
                                  modalidadesSelecionadas.add(modalidade);
                                });
                              } else {
                                setState(() {
                                  modalidadesSelecionadas.remove(modalidade);
                                });
                              }
                            },
                          ),
                        )
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 130),
                    child: ElevatedButton(
                      onPressed: () async {
                        FocusManager.instance.primaryFocus?.unfocus();

                        setState(() {
                          salvando = false;
                        });
                        if (nomeController.text.trim().length < 3) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("O nome deve ser preenchido."),
                            ),
                          );
                          return;
                        }

                        if (contatoController.text.trim().length < 3) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("O contato deve ser preenchido.s"),
                            ),
                          );
                          return;
                        }

                        if (dataNascimento == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("A data de nascimento inválida."),
                            ),
                          );
                          return;
                        }

                        if (generoSelecionado.trim() == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("O gênero deve ser selecionado."),
                            ),
                          );
                          return;
                        }
                        if (modalidadesSelecionadas.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "Deve ser selecionada pelo menos uma modalidade de atendimento."),
                            ),
                          );
                          return;
                        }
                        await storage.setString(
                            CHAVE_DADOS_CADASTRAIS_NOME, nomeController.text);
                        await storage.setString(CHAVE_DADOS_CADASTRAIS_CONTATO,
                            contatoController.text);
                        await storage.setString(
                            CHAVE_DADOS_CADASTRAIS_DATANASCIMENTO,
                            dataNascimentoController.text);
                        await storage.setString(
                            CHAVE_DADOS_CADASTRAIS_GENERO, generoSelecionado);
                        await storage.setStringList(
                            CHAVE_DADOS_CADASTRAIS_MODALIDADEATENDIMENTO,
                            modalidadesSelecionadas);
                        setState(() {
                          salvando = true;
                        });
                        Future.delayed(const Duration(seconds: 2), () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Dados salvos com sucesso!"),
                            ),
                          );
                          Navigator.pop(context);
                        });
                      },
                      child: const Text("Salvar"),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
