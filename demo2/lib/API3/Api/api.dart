import 'dart:convert';
import 'dart:io';

import 'package:demo2/API2/api/model/model.dart';
import 'package:demo2/API3/Api/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

class CategoriesProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get islOading {
    return _isLoading;
  }

  final bool _loadingSpinner = false;
  bool get loadingSpinner {
    return _loadingSpinner;
  }

  bool _isSelect = false;

  bool get isSelect {
    return _isSelect;
  }

  final bool _isError = false;

  bool get isError {
    return _isError;
  }

  List<Categories> _cat = [];
  List<Categories> get cats {
    return [..._cat];
  }

  Future CategoriesData({required BuildContext context}) async {
    try {
      _isLoading = true;
      // var headers = {'Cookie': 'ci_session=c7lis868nec6nl8r1lb5el72q8n26upv'};
      var response = await https.get(
        Uri.parse("https://www.themealdb.com/api/json/v1/1/categories.php"),
      );

      print("https://www.themealdb.com/api/json/v1/1/categories.php");

      print(response.body);

      if (response.statusCode == 200) {
        _isLoading = false;
        _cat = [];
        var extractedData = json.decode(response.body);
        //  print(json.decode(response.body) + 'printed extrated data');
        final List<dynamic> Category = extractedData["categories"];
        for (var i = 0; i < Category.length; i++) {
          _cat.add(
            Categories(
              idCategory: Category[i]['idCategory'].toString(),
              strCategory: Category[i]['strCategory'].toString(),
              strCategoryThumb: Category[i]['strCategoryThumb'],
              strCategoryDescription:
                  Category[i]['strCategoryDescription'].toString(),
            ),
          );
        }
        ;

        print('product details' + _cat.toString());
        _isLoading = false;
        print('products loading completed --->' + 'loading data');
        notifyListeners();
      } else {
        _isLoading = true;
        notifyListeners();
      }
    } on HttpException catch (e) {
      // ignore: prefer_interpolation_to_compose_strings
      print('error in product prod -->>' + e.toString());
      print('Product Data is one by one loaded the product' + e.toString());
      _isLoading = false;

      _isSelect = false;
      notifyListeners();
    }
  }
}
