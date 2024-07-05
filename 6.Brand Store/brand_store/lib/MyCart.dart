import 'package:brand_store/Providers/cart_provider.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("MyCart"),
        centerTitle: true,
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: finalList.length,
          itemBuilder: (context, index) {
            final cartItems = finalList[index];
            return Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(10),
                          child: Image.asset(cartItems.image),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cartItems.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("Yellow",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            Text("Size B",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        
        
                            Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('${cartItems.price}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        
        
                            SizedBox(width: 70,),
                            Row(
                              
                              children: [
                                Text("1",style: TextStyle(fontSize: 27),),
                                Text("x")
                              ],
                            )
                          ],
                        ),
                      ),
        
                          ],
                        )
                      ],),
                  ),
                )
              ],
            );
          },
        ),
      )
    );
  }
}