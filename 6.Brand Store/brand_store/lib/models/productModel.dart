import 'package:flutter/material.dart';

class Product {
  final String image;
  final double price;
  final String title;
  final int quantity;
  

   Product({required this.quantity,required this.image, required this.price, required this.title});


}

final List<Product> all = [
  Product(
    image: "images/Cart1.png",
    price: 240.32,
    title: "Tagerine Shirt",
    quantity: 0
    
  ),
  Product(
    image: "images/Cart2.png",
    price: 325.36,
    title: "Leather Coart",
    quantity: 0
  ),
  Product(
    image: "images/image3.png",
    price: 126.4,
    title: "Tagerine Shirt",
    quantity: 0
  ),
  Product(
    image: "images/image2.png",
    price: 257.85,
    title: "Leather Coart",
    quantity: 0
  ),
];