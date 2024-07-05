import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: (){
              setState(() {
                index = 1;
              });
            },
            icon: Icon(Icons.favorite_border),
            color: index == 1 ? Colors.red : Colors.white,
            iconSize: 25,
            

          ),

          IconButton(
            onPressed: (){
              setState(() {
                index = 2;
              });
            },
            icon: Icon(Icons.search),
            color: index == 2 ? Colors.red : Colors.white,
            iconSize: 25,

          ),

          IconButton(
            onPressed: (){
              setState(() {
                index = 3;
              });
            },
            icon: Icon(Icons.home_outlined),
            color: index == 3 ? Colors.red : Colors.white,
            iconSize: 25,

          ),

          IconButton(
            onPressed: (){
              setState(() {
                index = 4;
              });
            },
            icon: Icon(Icons.shopping_basket_outlined),
            color: index == 4 ? Colors.red : Colors.white,
            iconSize: 25,
            

          ),

          IconButton(
            onPressed: (){
              setState(() {
                index =5;
              });
            },
            icon: Icon(Icons.person_2_outlined),
            color: index == 5 ? Colors.red : Colors.white,
            iconSize: 25,

          ),
          

        ],
      ),
    );
  }
}