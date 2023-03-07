import 'clothes.dart';

class Popular extends Clothes {
  Popular({required super.imageURL, required super.name, required super.price});
}

List<Popular> mostPopular = [
  Popular(
      imageURL: "assets/images/pexels-el-gringo-photo-10371087.jpg",
      name: "Nike black crop top",
      price: 150),
  Popular(
      imageURL: "assets/images/pexels-el-gringo-photo-10371082.jpg",
      name: "Nike sky blue Tracksuit",
      price: 300),
  Popular(
      imageURL: "assets/images/pexels-el-gringo-photo-10371090.jpg",
      name: "Nike black crop top",
      price: 150)
];
