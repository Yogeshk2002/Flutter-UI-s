import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_ui/Login.dart';
import 'package:podcast_ui/MainScreen.dart';
import 'package:podcast_ui/RegistrationPage.dart';

void main() => runApp( Resistration());

class Resistration extends StatefulWidget {
  const Resistration({super.key});
  State createState() => _LoginAppState();
}

class _LoginAppState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            //width: 400,
            color: Color.fromARGB(255, 80, 70, 70),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(right: 20),
              height: 750,
              width: 320,
              
            
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(blurRadius: 20,color: Colors.white,spreadRadius: 5)
                ]
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 50)),
                    Container(
                      height: 72,
                      width: 186.88,
                      
                      child: Center(
                        child: Container(
                          child: Text("Create Account",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                      ),
                
                    ),
                    SizedBox(
                      height: 30,
                    ),
                
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create Account to",style: GoogleFonts.roboto(fontSize: 18,fontWeight:FontWeight.w500,color:Colors.white)),
                        Text("explore digital audio.",style: GoogleFonts.roboto(fontSize: 18,fontWeight:FontWeight.w500,color:Colors.white))
                      ],
                    ),
            
                    SizedBox(height: 40,),

                    TextField(
                      style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Ex. Yogesh",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
                    labelText: "Your FirstName",
                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelBehavior: FloatingLabelBehavior.always,

                    
                  ),
                ),

                SizedBox(height: 20,),
            
                    TextField(
                    style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Ex. Kedar",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
                    labelText: "Your LastName",
                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelBehavior: FloatingLabelBehavior.always,

                    
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  style: TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Ex. abc@123",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
                    labelText: "Your Passward",
                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelBehavior: FloatingLabelBehavior.always,

                    
                  ),
                ),

                SizedBox(height: 20,),

                 TextField(
                  style: TextStyle(color: Colors.white),
                  
                  maxLines: 4,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    hintText: "Ex. Pune, Maharashtra India",
                    hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
                    labelText: "Enter Your Address",
                    labelStyle: TextStyle(color: Colors.white),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    
                  ),
                ),

                

                



                
                    
            
                    SizedBox(height: 25,),
            
                    
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 17, 126, 215),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(blurRadius: 8,color: Color.fromARGB(255, 91, 122, 148),spreadRadius: 1.5)
                        ]
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen() ));
                        },
                        child: Text("Sign Up",style: GoogleFonts.roboto(fontSize:15,color:Colors.white),),
                      ),
                    ),
            
                    SizedBox(height: 8,),
                     
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
































// import 'package:flutter/material.dart';
// import 'package:podcast_ui/Login.dart';

// class Registration extends StatefulWidget {
//   Registration({super.key});

//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<Registration> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//       children: [
//         Container(
//           height: double.infinity,

//           color: Colors.black,

//           // child: Text("Resistration Page",style: TextStyle(height: 20,),),
//         ),

//         Container(
//           margin: EdgeInsets.only(top: 180),
//           width: 400,
//           height: 500,
        
//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 81, 79, 79),
//             borderRadius: BorderRadius.all(Radius.circular(20)),
//           ),

//           child: Padding(
//             padding: const EdgeInsets.all(30),
//             child: Column(
//               children: [
//                 TextField(

//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     hintText: "Ex. Yogesh",
//                     hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
//                     labelText: "Your FirstName",
//                     labelStyle: TextStyle(color: Colors.white),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,

                    
//                   ),
//                 ),

//                 SizedBox(height: 30,),

//                 TextField(

//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     hintText: "Ex. Kedar",
//                     hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
//                     labelText: "Your LastName",
//                     labelStyle: TextStyle(color: Colors.white),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,

                    
//                   ),
//                 ),

//                 SizedBox(height: 30,),

//                 TextField(
//                   maxLines: 5,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     hintText: "Ex. Pune, Maharashtra India",
//                     hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
//                     labelText: "Enter Your Address",
//                     labelStyle: TextStyle(color: Colors.white),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,
                    
//                   ),
//                 ),

//                 SizedBox(height: 30,),

//                 TextField(

//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
//                     hintText: "Ex. 9028341875",
//                     hintStyle: TextStyle(color: Color.fromARGB(255, 54, 52, 52)),
//                     labelText: "Your Contact",
//                     labelStyle: TextStyle(color: Colors.white),
//                     floatingLabelBehavior: FloatingLabelBehavior.always,

                    
//                   ),
//                 ),
//               ],
//             ),
//           ),
          
//         ),

//         Container(
//           margin: EdgeInsets.only(top: 90,left: 20,right: 20),
//           height: 40,
//           width: 320,

//           decoration: BoxDecoration(
//             color: Color.fromARGB(255, 159, 154, 154),
//             borderRadius: BorderRadius.circular(200),
            
//           ),

//           child: Container(
//             height: 30,
//             width: 30,
//             child: Center(child: Text("Registration",style: TextStyle(fontSize: 26,color: Colors.white),)),
//           )

          
//         ),

//         Center(
//           child: Container(
//             margin: EdgeInsets.only(top: 700,left: 20,right: 20),
//             height: 40,
//             width: 300,
          
//             child: ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//             }, child: Text("Submit")),
          
            
//             ),
//         )

          
        
//       ],
//       )
//     );
//   }
// }
