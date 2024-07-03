// import 'package:flutter/material.dart';

// class MyAlertDialogBox extends StatefulWidget {
//   const MyAlertDialogBox({super.key});

//   State createState() => _MyAlertDialogBoxState();
// }

// class _MyAlertDialogBoxState extends State { 

//     Future<dynamic> ShowMyDialog() async {
//       return await showDialog(
//         context: context, 
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Center(child: const Text("Delete Category")),
//             content: Column(
//               children: [
//                 Text("Are you sure you want to delete the"),
//                 Text("selected category"),
//               ],
//             ),

//             actions: [
//               ElevatedButton(
//                 onPressed: (){}, 
                
//                 child: const Text("Delete")
//               ),
//               ElevatedButton(
//                 onPressed: (){}, 
                
//                 child: const Text("Delete")
//               )
//             ],
//           );
//         }
//       );
//     }

//   Widget build(BuildContext context) {
//     return ShowMyDialog();
//   }
// }