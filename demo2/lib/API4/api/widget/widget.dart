import 'package:flutter/material.dart';

class Productswid extends StatefulWidget {
  final String id;
  final String name;
  final String categoryId;
  final String file;
  final String quantity;
  final String description;

  final String price;

  const Productswid({
    super.key,
    required this.id,
    required this.name,
    required this.categoryId,
    required this.file,
    required this.quantity,
    required this.description,
    required this.price,
  });

  @override
  State<Productswid> createState() => _ProductswidState();
}

class _ProductswidState extends State<Productswid> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
