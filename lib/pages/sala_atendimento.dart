// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// class GoogleMeetScreen extends StatefulWidget {
//   const GoogleMeetScreen({super.key});

//   @override
//   _GoogleMeetScreenState createState() => _GoogleMeetScreenState();
// }

// class _GoogleMeetScreenState extends State<GoogleMeetScreen> {
//   late InAppWebViewController _webViewController;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Meet'),
//       ),
//       body: Container(
//         child: InAppWebView(
//           initialData: InAppWebViewInitialData(
//             data: '''
//               <html>
//                 <body>
//                   <iframe src="https://meet.google.com" height="100%" width="100%"></iframe>
//                 </body>
//               </html>
//             ''',
//             mimeType: 'text/html',
//             encoding: 'utf-8',
//           ),
//           onWebViewCreated: (controller) {
//             _webViewController = controller;
//           },
//         ),
//       ),
//     );
//   }
// }
