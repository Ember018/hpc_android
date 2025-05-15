class ElectronicItem {
  String name;
  int price;
  String image;

  ElectronicItem(this.name, this.price, this.image);

  factory ElectronicItem.fromJson(Map<String, dynamic> json) {
    return ElectronicItem(
      json['name'] as String,
      json['price'] as int,
      json['image'] as String,
    );
  }
}
