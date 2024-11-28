class Products {
  final String id;
  final String name;
  final String categoryId;
  final String file;
  final String quantity;
  final String description;

  final String price;

  Products({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.file,
    required this.quantity,
    required this.description,
    required this.price,
  });

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'],
      name: json['name'],
      categoryId: json['category_id'],
      file: json['file'],
      quantity: json['quantity'],
      description: json['description'],
      price: json['price'],
    );
  }
}
