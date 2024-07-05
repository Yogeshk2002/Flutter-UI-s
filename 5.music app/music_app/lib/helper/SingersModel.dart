class SingersModel {
  final String image;
  final String name;
  final int year;
  final String description;

  SingersModel({required this.image, required this.name, required this.year, required this.description});
}

List<SingersModel> Singers = [
  SingersModel(
    image: "images/gallaryVertical.png",
    name: "We are Choas",
    year: 2023,
    description: "Easy Living"
  ),

  SingersModel(
    image: "images/gallaryList1.png",
    name: "Smile",
    year: 2024,
    description: "Berrechild"
  ),
];