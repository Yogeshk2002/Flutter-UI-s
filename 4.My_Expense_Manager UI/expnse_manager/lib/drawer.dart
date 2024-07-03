// 


import 'package:expnse_manager/Categories.dart';
import 'package:expnse_manager/addTransaction.dart';
import 'package:expnse_manager/graph.dart';
import 'package:expnse_manager/trash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State {
  int selectedIndex = 0;

  void menuItemClick(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 237, 234, 234),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expense manager",
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(
              "Saves all your transactions",
              style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 20,),
            menuItem(0, "Transaction", "lib/assets/images/transaction.png"),
            SizedBox(height: 30,),
            menuItem(1, "Graphs", "lib/assets/images/graphs.png"),
            SizedBox(height: 30,),
            menuItem(2, "Category", "lib/assets/images/category.png"),
            SizedBox(height: 30,),
            menuItem(3, "Trash", "lib/assets/images/trash.png"),
            SizedBox(height: 30,),
            menuItem(4, "About us", "lib/assets/images/aboutUs.png"),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Widget menuItem(int index, String title, String imagePath) {
    return GestureDetector(
      onTap: () {
        menuItemClick(index);
        if(index == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Transaction()));
        }
        else if(index == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MypieChart()));
        }
        else if(index == 2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyCategories()));
        }
        else if(index == 3) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyTrash()));
        }
        
      },
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20)
          ),
          color: selectedIndex == index ? Color.fromRGBO(194, 240, 229, 1) : Color.fromARGB(255, 237, 234, 234),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset(imagePath,),
              SizedBox(width: 15),
              Text(title, style: GoogleFonts.poppins(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({super.key});

//   Widget build(BuildContext context) {
//     return Drawer(
//         child: Padding(
//           padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("Expense manager",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w600),),
//               Text("Saves all your transactions",style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w200,),),

//               SizedBox(height: 20,),

//               Container(
//                 height: 45,
//                 width: 195,
                
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
//                   color: Color.fromRGBO(194, 240, 229, 1),
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset("lib/assets/images/transaction.png"),
//                     SizedBox(width: 15,),
//                     Text("Transaction",style: GoogleFonts.poppins(fontSize:15),)
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20,),

//               Container(
//                 height: 45,
//                 width: 195,
                
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset("lib/assets/images/graphs.png"),
//                     SizedBox(width: 15,),
//                     Text("Graphs",style: GoogleFonts.poppins(fontSize:15),)
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20,),

//               Container(
//                 height: 45,
//                 width: 195,
                
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset("lib/assets/images/category.png"),
//                     SizedBox(width: 15,),
//                     Text("Category",style: GoogleFonts.poppins(fontSize:15),)
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20,),

//               Container(
//                 height: 45,
//                 width: 195,
                
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset("lib/assets/images/trash.png"),
//                     SizedBox(width: 15,),
//                     Text("Trash",style: GoogleFonts.poppins(fontSize:15),)
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20,),

//               Container(
//                 height: 45,
//                 width: 195,
                
//                 decoration: const BoxDecoration(
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  
//                 ),
//                 child: Row(
//                   children: [
//                     Image.asset("lib/assets/images/aboutUs.png"),
//                     SizedBox(width: 15,),
//                     Text("About us",style: GoogleFonts.poppins(fontSize:15),)
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20,),

//             ],
//           ),
//         ),
//       );
//   }
// }
