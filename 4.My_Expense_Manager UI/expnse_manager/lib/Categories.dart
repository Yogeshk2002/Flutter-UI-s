import 'package:expnse_manager/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategories extends StatefulWidget {
  const MyCategories({super.key});

  State createState() => _MyCategoriesState();
}

class _MyCategoriesState extends State {
  Widget build(BuildContext context){



    Future<dynamic> ShowMyDialog() async {
      return await showDialog(
        
        context: context, 
        builder: (BuildContext context) {
          return AlertDialog(
            // contentPadding: EdgeInsets.all(10),

            title: Center(child: const Text("Delete Category")),
            content: Container(
              height: 50,
              width: 340,
              child: Column(
                children: [
                  Text("Are you sure you want to delete the",style: GoogleFonts.roboto(fontSize:15,fontWeight:FontWeight.w500),),
                  Text("selected category",style: GoogleFonts.roboto(fontSize:15,fontWeight:FontWeight.w500),),
                ],
              ),
            ),

            actions: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 112, 13)),
                        // textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white))
                        
                      ),
                onPressed: (){}, 
                
                child: const Text("Delete",style: TextStyle(color: Colors.white),)
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color.fromRGBO(140, 128, 128, 0.2))
                ),
                onPressed: (){}, 
                
                child: const Text("Cancel",style: TextStyle(color: Colors.black),)
              )
                ],
              ),
              
            ],
          );
        }
      );
    }






      final TextEditingController _imageController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();


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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              
              const SizedBox(
                height: 12,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    // width: 74,
                    // height: 97,

                    child: Column(
                      
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Container(
                            height: 74,
                            width: 74,
                          
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(190, 190, 190, 1),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.image_outlined),
                          ),
                        ),
                        SizedBox(height: 10,),

                        Text("Add")

                        
                  
                  
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Image URL",
                    style: GoogleFonts.poppins(
                      
                      fontWeight:FontWeight.w400,
                      fontSize:13
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: _imageController,
                    decoration: InputDecoration(
                      hintText: "Enter URL",
                      hintStyle: const TextStyle(color: Color.fromARGB(255, 220, 217, 217)),
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
                  SizedBox(height: 10,),

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
                      hintText: "Enter category Name",
                      hintStyle: const TextStyle(color: Color.fromARGB(255, 220, 217, 217)),
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
                  SizedBox(height: 10,),

                  Center(
                    child: Container(
                      height: 45,
                      width: 100,
                      margin: EdgeInsets.only(bottom: 20),
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
                  ),
                ]
              )
            ],
          ),
        );
      }
    );
  }





    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1), 
              itemCount: imagesList.length,
              
              itemBuilder: (context, index) {
                String image = imagesList[index];
                String title = namesList[index];
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                        //border: Border.all(color: Color.fromARGB(255, 193, 188, 188)),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          
                          offset: Offset(7, 7),
                          color: Color.fromARGB(255, 77, 70, 70)
                        )
                      ]
                    ),
                    child: GestureDetector(
                      onLongPress: () {
                          ShowMyDialog();
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 74,
                              width: 74,
                              child: Image.asset(image,fit: BoxFit.cover,),
                            
                            ),
                          ),
                          SizedBox(height: 14,),
                          Text(title,style: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500),)
                        ],
                        
                      ),
                    ),
                    
                  ),
                );
              },
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
                      Text("Add Category"),
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

List<String> imagesList = [
  "lib/assets/images/food.png",
  "lib/assets/images/fuel.png",
  "lib/assets/images/medicine.png",
  "lib/assets/images/shopping.png",
];

List<String> namesList = [
  "Food",
  "Fuel",
  "Medicine",
  "Shopping"
];