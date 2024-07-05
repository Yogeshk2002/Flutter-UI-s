import 'package:brand_store/Providers/cart_provider.dart';
import 'package:brand_store/models/productModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  const ProductDetails({super.key,required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int index = 2;
  @override
  Widget build(BuildContext context) {

    final provider = CartProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Details"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.bookmark_border),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all (16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: 315,
        
              child: Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Image.asset(widget.product.image,fit: BoxFit.cover,),
              ),
            ),

            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Premium",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                    Text("Tagerine Shirt",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),)
                  ],
                ),

                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(width: 5,),

                    Container(
                      height: 30,
                      width: 30,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                    ),
                    SizedBox(width: 5,),

                    Container(
                      height: 30,
                      width: 30,

                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                )
              ],
            ),
            SizedBox(height: 15,),
            Text("Size",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),

            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,

                    color: index == 1 ? Colors.black : Colors.white,
                  
                    child: Center(child: Text("S",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: index == 1 ? Colors.white : Colors.black),)),
                  
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    color: index == 2 ? Colors.black : Colors.white,
                  
                    child: Center(child: Text("M",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: index == 2 ? Colors.white : Colors.black),)),
                  
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    color: index == 3 ? Colors.black : Colors.white,
                  
                    child: Center(child: Text("L",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: index == 3 ? Colors.white : Colors.black),)),
                  
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 4;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    color: index == 4 ? Colors.black : Colors.white,
                  
                    child: Center(child: Text("XL",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: index == 4 ? Colors.white : Colors.black),)),
                  
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      index = 5;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 40,
                    color: index == 5 ? Colors.black : Colors.white,
                  
                    child: Center(child: Text("XXL",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: index == 5 ? Colors.white : Colors.black),)),
                  
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("\$${widget.product.price}",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent)
                  ),
                  onPressed: (){
                    provider.toggleFavorite(widget.product);
                    const snackBar = SnackBar(
                      content: Text(
                        "Successflly Added to Cart",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),
                    ),
                    duration:Duration(seconds: 1)
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, child: Text("Add to Cart",style: TextStyle(color: Colors.white
                  ),
                  ),
                  
                  
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}