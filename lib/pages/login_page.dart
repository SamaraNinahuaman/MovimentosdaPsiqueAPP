import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/icon/my_icon.dart';
import 'package:myfirstapp/pages/main_page.dart';
import 'package:myfirstapp/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "");
  var senhaController = TextEditingController(text: "");
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      const Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: AnimatedIconWithMovingColor(),
                        ),
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '"Uma gota pode mover um oceano."',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Faça seu login ou cadastre-se abaixo!",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                        controller: emailController,
                        onChanged: (value) {
                          debugPrint(value);
                        },
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 10),
                            hintText: "Email",
                            prefixIcon: Icon(Icons.email,
                                color: Color.fromARGB(255, 18, 32, 183)))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                        controller: senhaController,
                        obscureText: isObscureText,
                        onChanged: (value) {
                          debugPrint(value);
                        },
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(bottom: 10),
                            hintText: "Senha",
                            prefixIcon: const Icon(Icons.lock,
                                color: Color.fromARGB(255, 18, 32, 183)),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  isObscureText = !isObscureText;
                                });
                              },
                              child: Icon(isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ))),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 70,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            if (emailController.text.replaceAll(" ", "") ==
                                    "e" &&
                                senhaController.text == "1") {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainPage(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Erro ao efetuar o login"),
                                ),
                              );
                              debugPrint("Erro ao efetuar o login");
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 18, 32, 183)),
                          ),
                          child: const Text(
                            "Entrar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: RichText(
                      text: TextSpan(
                        text: "Caso não tenha uma conta ",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black),
                        children: [
                          TextSpan(
                            text: "toque aqui!",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const RegisterPage(),
                                  )),
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 18, 32, 183)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 20,
                    alignment: Alignment.center,
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text("Esqueci minha senha",
                          style: TextStyle(
                              color: Color.fromARGB(255, 138, 5, 18),
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 20,
                    alignment: Alignment.center,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
