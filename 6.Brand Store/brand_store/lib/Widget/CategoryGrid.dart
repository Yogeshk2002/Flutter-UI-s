// import 'package:brand_store/models/productModel.dart';
// import 'package:flutter/material.dart';

// class ProductCard extends StatefulWidget {
//   const CategoryGrid({super.key});

//   @override
//   State<CategoryGrid> createState() => _CategoryGridState();
// }

// class _CategoryGridState extends State<CategoryGrid> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 400,
//       width: double.infinity,

//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemCount: all.length,
//         itemBuilder: (context, index) {
//           return Container(
//             height: 300,
//             width: 150,
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Image.asset(all[index].image),
                  
            
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       )
//     );
//   }
// }