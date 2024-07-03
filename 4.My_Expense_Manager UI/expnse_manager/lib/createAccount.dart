import 'package:expnse_manager/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const AccountCreate());
class AccountCreate extends StatefulWidget{
  const AccountCreate({super.key});

  State createState() => _AccountCreateState();
}

class _AccountCreateState extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 86,left: 40,right: 40),
        
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 69.76,
                  height: 58.82,
                  child: Image.asset("lib/assets/images/image1.png")
                ),
              ),
        
              SizedBox(
                height: 50,
        
              ),
        
        
              Text("Create your Account",style: GoogleFonts.poppins(fontSize:18,fontWeight:FontWeight.w700,color:Colors.black),),
        
              SizedBox(height: 20,),
        
                 Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 5,
                        //color: Colors.black,
                        offset: Offset(5,5),
                        color: Color.fromARGB(255, 143, 141, 141)
                      ),
        
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                   child: TextField(
                    
                      decoration: InputDecoration(
                   
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            //borderSide: BorderSide(color: Colors.black)
                        
                          ),
                          hintText: "Name"    
                          
                      ),
                      
                                 ),
                 ),
        
                 SizedBox(height: 20,),
        
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 5,
                        //color: Colors.black,
                        offset: Offset(5,5),
                        color: Color.fromARGB(255, 143, 141, 141)
                      ),
        
                    ],
                  ),
                   child: TextField(
                      
                        decoration: InputDecoration(
                     
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              //borderSide: BorderSide(color: Colors.black)
                          
                            ),
                            hintText: "Username"     
                            
                        ),
                        
                    ),
                 ),
        
                  SizedBox(height: 20,),
        
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 5,
                        //color: Colors.black,
                        offset: Offset(5,5),
                        color: Color.fromARGB(255, 143, 141, 141)
                      ),
        
                    ],
                  ),
                   child: TextField(
                      
                        decoration: InputDecoration(
                     
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              //borderSide: BorderSide(color: Colors.black)
                          
                            ),
                            hintText: "Password"     
                            
                        ),
                        
                    ),
                 ),
        
                  SizedBox(height: 20,),
        
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 3,
                        blurRadius: 5,
                        //color: Colors.black,
                        offset: Offset(5,5),
                        color: Color.fromARGB(255, 143, 141, 141)
                      ),
        
                    ],
                  ),
                   child: TextField(
                      
                        decoration: InputDecoration(
                     
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              //borderSide: BorderSide(color: Colors.black)
                          
                            ),
                            hintText: "Confirm Password",     
                            
                        ),
                        
                    ),
                 ),
        
                  SizedBox(height: 20,),
        
                Center(
                  child: Container(
                    width: 300,
                    // color: Colors.green,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)
                    ),
                      child: Text("Sign Up",style: GoogleFonts.poppins(fontSize:16,color:Colors.white),),
                    ),
                  ),
                ),
        
        
            ],  
          ),
        ),
      ),
    );
  }
}