class Product {
  final String image;
  final String name;
  final int year;

  Product({ required this.image,required this.name,required this.year, });
}

List<Product> all = [
  Product(
    image: "images/gallaryList1.png", 
    name: "Dead Inside", 
    year: 2020
  ),
  Product(
    image: "images/gallaryList2.png", 
    name: "Alone", 
    year: 2022
  ),

  Product(
    image: "images/gallaryList4.png", 
    name: "Heartless", 
    year: 2023
  ),
];