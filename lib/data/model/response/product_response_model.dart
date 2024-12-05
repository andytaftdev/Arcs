import 'package:meta/meta.dart';
import 'dart:convert';

class ProductResponseModel {
  final List<Product> product;

  ProductResponseModel({
    required this.product,
  });

  factory ProductResponseModel.fromJson(String str) => ProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductResponseModel.fromMap(Map<String, dynamic> json) => ProductResponseModel(
    product: List<Product>.from(json["products"].map((x) => Product.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "products": List<dynamic>.from(product.map((x) => x.toMap())),
  };
}

class Product {
  final int id;
  final String name;
  final String description;
  final int stock;
  final String price;
  final String category;
  final String image;
  final DateTime createdAt;
  final DateTime updatedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.stock,
    required this.price,
    required this.category,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: json["name"],
    description: json["description"],
    stock: json["stock"],
    price: json["price"],
    category: json["category"],
    image: json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "description": description,
    "stock": stock,
    "price": price,
    "category": category,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
