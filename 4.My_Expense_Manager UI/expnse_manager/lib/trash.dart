import 'package:expnse_manager/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTrash extends StatefulWidget {
  const MyTrash({Key? key}) : super(key: key);

  @override
  State createState() => _MyTrashState();
}

class _MyTrashState extends State<MyTrash> {

  List<String> iconImageList =[
  "lib/assets/images/medicine.png",
  "lib/assets/images/food.png",
  "lib/assets/images/medicine.png",
  "lib/assets/images/food.png",
  "lib/assets/images/medicine.png",
  "lib/assets/images/food.png",
];

  List<String> titleList = [
    "Medicine",
    "Food",
    "Medicine",
    "Food",
    "Medicine",
    "Food",
  ];

  List<String> descriptionList = [
    "Medicine is a special kind of health that can be used to help others",
    "Food is a special kind of health that can be used to help others",
    "Medicine is a special kind of health that can be used to help others",
    "Food is a special kind of health that can be used to help others",
    "Medicine is a special kind of health that can be used to help others",
    "Food is a special kind of health that can be used to help others", 
  ];

  List<String> dateList = [
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
  "3 June | 11:50 AM",
];

  List<String> priceList = [
    "500",
    "650",
    "500",
    "650",
    "500",
    "650"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("June 2022"),
        actions: [
          Container(margin: EdgeInsets.only(right: 20),child: Icon(Icons.search))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: iconImageList.length,
                
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
                      
                      children: [
                        // Image.asset(image),
                        Icon(Icons.remove_circle_rounded,color: const Color.fromARGB(255, 156, 156, 156),),
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
                                     
                                      SizedBox(width: 7,),
                                      Text(price,style: TextStyle(fontWeight: FontWeight.bold),)
            
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
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}


