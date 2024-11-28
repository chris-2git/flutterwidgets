import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final String idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;
  const Categories(
      {super.key,
      required this.idCategory,
      required this.strCategory,
      required this.strCategoryThumb,
      required this.strCategoryDescription});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.strCategoryThumb),
        ),
      ),
      child: Column(
        children: [
          Text(widget.strCategory),
          Text(
            widget.strCategoryDescription,
          ),
        ],
      ),
    );
  }
}
