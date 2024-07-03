import 'package:expnse_manager/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State createState() => _TransactionAppState();
}

class _TransactionAppState extends State<Transaction> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();


  void showBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
      ),
      isDismissible: true,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,

            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              const SizedBox(
                height: 12,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.poppins(
                      
                      fontWeight:FontWeight.w400,
                      fontSize:13
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148,1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent
                        ),
                        borderRadius: BorderRadius.circular(12)
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Amount",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:13
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller: _amountController,
                    
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        )
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:13
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller: _categoryController,
                    
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                        )
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  Text(
                    "Description",
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.w400,
                      fontSize:13
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  TextField(
                    controller: _descriptionController,
                    
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        )
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.purpleAccent
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                    
                  
                ],
              ),

              const SizedBox(
                height: 20,
              ),

              Container(
                height: 45,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),

                    backgroundColor: Color.fromRGBO(14, 161, 125, 1),
                  ),
                  onPressed: () {
                    //doedit ? submit(doedit,toDoModelObj) : submit(doedit);
                    Navigator.of(context).pop();
                  },

                  child: Text(
                    "Add",
                    style: GoogleFonts.inter(
                      color:Colors.white,
                      fontWeight:FontWeight.w700,
                      fontSize:20
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              )
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("June 2022"),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                itemCount: titleList.length,
                
                separatorBuilder: (context,index) {
                  return Divider();
                }, 
                itemBuilder: (BuildContext context,index) {
                  
                  String image = iconImageList[index];
                  String title = titleList[index];
                  String description = descriptionList[index];
                  String date = dateList[index];
                  String price = priceList[index];
            
                  return Container(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(image),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(title,style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:Color.fromRGBO(1, 1, 1, 1))),
            
                                  Row(
                                    children: [
                                      Icon(Icons.remove_circle_rounded, color: Colors.red),
                                      SizedBox(width: 7,),
                                      Text(price)
            
                                    ],
                                  )
                                  
                                ],
                              ),
            
                              Text(description,style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color.fromRGBO(1, 1, 1, 0.8)),),
            
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(date,style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:Color.fromRGBO(1, 1, 1, 0.6))),
                                ],)
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }, 
                
              ),
              
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 30),
              width: 180,
              height: 50,
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(40), // Adjust the radius as needed
                ),
                backgroundColor: Colors.white,
                
                
                // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: (){
                  showBottomSheet();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(left: 12),
                        
                        child: Icon(Icons.add_circle_outlined,color:Colors.green,size: 38,)
                      ),
                      SizedBox(width: 3,),
                      Text("Add Transaction"),
                    ],
                  ),
                ),
              ),
            )
        ],
      ),

      
      drawer: MyDrawer(),
    );
  }
}

       List<String> iconImageList =[
  "lib/assets/images/medicine.png",
  "lib/assets/images/food.png",
  "lib/assets/images/shopping.png",
  "lib/assets/images/fuel.png",
  "lib/assets/images/entertainment.png",
];

List<String> titleList = [
    "Medicine",
    "Food",
    "Shopping",
    "Fuel",
    "Entertainment"
];

List<String> descriptionList = [
  "Medicines expenses in the last month",
  "Food expenses in the last month",
  "Shopping expenses in the last month",
  "Fuel expenses in the last month",
  "Entertainment expenses in the last month"
];

List<String> priceList = [
  "₹ 500",
  "₹ 650",
  "₹ 325",
  "₹ 600",
  "₹ 475"
];

List<String> dateList = [
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
];
