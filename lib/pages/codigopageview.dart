// import 'package:flutter/material.dart';

// class Pagina4Page extends StatefulWidget {
//   const Pagina4Page({super.key});

//   @override
//   State<Pagina4Page> createState() => _Pagina4Page();
// }

// class _Pagina4Page extends State<Pagina4Page> {
//   @override
//   Widget build(BuildContext context) {

//     return 

// Expanded(
//             child: PageView(
//               controller: controller,
//               onPageChanged: (value) {
//                 setState(() {
//                   posicaoPagina = value;
//                 });
//               },
//               children: const [
//                 Pagina1Page(),
//                 Pagina2Page(),
//                 Pagina3Page(),
//               ],
//             ),
//           ),
//           BottomNavigationBar(
//             onTap: (value) {
//               controller.jumpToPage(value);
//             },
//             currentIndex: posicaoPagina,
//             items: const [
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: Icon(Icons.skip_previous),
//               ),
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: Icon(Icons.home),
//               ),
//               BottomNavigationBarItem(
//                 label: "",
//                 icon: Icon(Icons.skip_next),
//               ),
//             ],
//           ),
//   }
//   }
