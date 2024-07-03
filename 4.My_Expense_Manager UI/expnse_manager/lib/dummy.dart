// Padding(
//         padding: const EdgeInsets.all(20),
//         child: ListView.separated(
//           itemCount: titleList.length,
          
//           separatorBuilder: (context,index) {
//             return Divider();
//           }, 
//           itemBuilder: (BuildContext context,index) {
            
//             String image = iconImageList[index];
//             String title = titleList[index];
//             String description = descriptionList[index];
//             String date = dateList[index];
//             String price = priceList[index];

//             return Container(
//               child: Row(
//                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Image.asset(image),
//                   SizedBox(width: 20),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(title,style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:Color.fromRGBO(1, 1, 1, 1))),

//                             Row(
//                               children: [
//                                 Icon(Icons.remove_circle_rounded, color: Colors.red),
//                                 SizedBox(width: 7,),
//                                 Text(price)

//                               ],
//                             )
                            
//                           ],
//                         ),

//                         Text(description,style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color.fromRGBO(1, 1, 1, 0.8)),),

//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Text(date,style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color.fromRGBO(1, 1, 1, 0.6))),
//                           ],)
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }, 
          
//         )
//         ),




//         List<String> iconImageList =[
//   "lib/assets/images/medicine.png",
//   "lib/assets/images/food.png",
//   "lib/assets/images/shopping.png",
//   "lib/assets/images/fuel.png",
//   "lib/assets/images/entertainment.png",
// ];

// List<String> titleList = [
//     "Medicine",
//     "Food",
//     "Shopping",
//     "Fuel",
//     "Entertainment"
// ];

// List<String> descriptionList = [
//   "Medicines expenses in the last month",
//   "Food expenses in the last month",
//   "Shopping expenses in the last month",
//   "Fuel expenses in the last month",
//   "Entertainment expenses in the last month"
// ];

// List<String> priceList = [
//   "₹ 500",
//   "₹ 650",
//   "₹ 325",
//   "₹ 600",
//   "₹ 475"
// ];

// List<String> dateList = [
//   "3 June | 11:50 AM",
//   "3 June | 11:50 AM",
//   "3 June | 11:50 AM",
//   "3 June | 11:50 AM",
//   "3 June | 11:50 AM",
// ];


// Container(
//               width: 166,
//               height: 46,
//               child: FloatingActionButton(
//                 shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(40), // Adjust the radius as needed
//                 ),
//                 backgroundColor: Colors.white,
                
                
//                 // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
//                 onPressed: (){
//                   showBottomSheet();
//                 },
//                 child: Row(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 12),
                      
//                       child: Icon(Icons.add_circle_outlined,color:Colors.green,size: 38,)
//                     ),
//                     Text("Add Transaction"),
//                   ],
//                 ),
//               ),
//             )