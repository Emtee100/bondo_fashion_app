class NewArrival {
  String imageURL;
  String name;
  int price;
  NewArrival({required this.imageURL, required this.name, required this.price});
}

List<NewArrival> arrivals = [
  NewArrival(
      imageURL: "assets/images/pexels-keen-9286988.jpg",
      name: "Kinnstorm Black Jacket",
      price: 210),
  NewArrival(
      imageURL: "assets/images/adihb9512_cblack_10.jpg",
      name: "Addidas Black Jacket",
      price: 300),
  NewArrival(
      imageURL: "assets/images/pexels-keen-9286310.jpg",
      name: "Kinnstorm Red Jacket",
      price: 180),

];
