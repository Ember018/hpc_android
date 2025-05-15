class CommonItem {
  String name;
  double price;
  String image;

  CommonItem(this.name, this.price, this.image);

  factory CommonItem.fromJson(Map<String, dynamic> json) {
    return CommonItem(json['name'] as String, json['price'] as double,
        json['image'] as String);
  }
}
