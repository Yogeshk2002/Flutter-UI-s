import 'package:brand_store/Widget/ProductDetails.dart';
import 'package:brand_store/models/productModel.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key,required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails(product: widget.product,)));
      },

      child: Column(
        children: [
          Stack(
            children: [
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
          
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       SizedBox(
              //         height: 15,
                      
              //       ),
              //       Center(
              //         child: Image.asset(widget.product.image,height: 120, width: 120, fit: BoxFit.cover,),
              //       )
              //     ],
              //   ),
          
              // )
                Center(
                  child: Image.asset(widget.product.image,height: 120,width: 120,),
                ),
                FloatingActionButton(
                  
                  onPressed: (){},
                  child: Icon(Icons.shopping_bag),
                )
          
            ],
          ),
          Text("\$${widget.product.price}"),
          Text(widget.product.title)
        ],
      ),
    );
  }
}