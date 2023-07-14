import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/blog_main.dart';
import 'package:myfirstapp/pages/login_page.dart';
import 'package:myfirstapp/pages/main_page.dart';
import 'package:myfirstapp/pages/pagina1.dart';
import 'package:myfirstapp/pages/pagina2.dart';
import 'package:myfirstapp/pages/pagina3.dart';
import 'package:myfirstapp/pages/register_page.dart';
import 'package:myfirstapp/pages/sala_atendimento.dart';
import 'package:myfirstapp/tools/myroutes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        kREGISTERPAGE: (context) => const RegisterPage(),
        kMAINPAGE: (context) => const MainPage(),
        kLOGINPAGE: (context) => const LoginPage(),
        kBLOGMAIN: (context) => const BlogMain(),
        kSALAATENDIMENTO: (context) => const SalaAtendimento(),
        kPAGINA2: (context) => const Pagina2Page(),
        kPAGINA1: (context) => const Pagina1Page(),
        kPAGINA3: (context) => const Pagina3Page(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const LoginPage(),
    );
  }
}
