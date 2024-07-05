import 'package:brand_store/MyCart.dart';
import 'package:brand_store/Providers/cart_provider.dart';
import 'package:brand_store/Widget/ProductDetails.dart';
import 'package:brand_store/cart.dart';
import 'package:brand_store/checkout.dart';
import 'package:brand_store/home.dart';
import 'package:brand_store/models/productModel.dart';
import 'package:brand_store/onbording.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key,});

  Widget build(BuildContext context) { 
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider())
      ],
    
    child :MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));
  }
}