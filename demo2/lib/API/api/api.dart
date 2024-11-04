import 'dart:convert';
import 'dart:io';
import 'package:demo2/api/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

class GardenProvider with ChangeNotifier {
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

  List<GardenPackageDetails> _gardens = [];
  List<GardenPackageDetails> get gardens {
    return [..._gardens];
  }

  Future getAllGardensData({required BuildContext context}) async {
    try {
      _isLoading = true;
      // var headers = {'Cookie': 'ci_session=c7lis868nec6nl8r1lb5el72q8n26upv'};
      var response = await https.get(
        Uri.parse(
            "http://campus.sicsglobal.co.in/Project/communitygarden/api/view_packages.php"),
      );

      print(
          "http://campus.sicsglobal.co.in/Project/communitygarden/api/view_packages.php");

      print(response.body);

      if (response.statusCode == 200) {
        _isLoading = false;
        _gardens = [];
        var extractedData = json.decode(response.body);
        //  print(json.decode(response.body) + 'printed extrated data');
        final List<dynamic> farmDetails =
            extractedData['garden_package_details'];
        for (var i = 0; i < farmDetails.length; i++) {
          _gardens.add(
            GardenPackageDetails(
                packageId: farmDetails[i]['package_id'].toString(),
                packageName: farmDetails[i]['package_name'].toString(),
                price: farmDetails[i]['price'].toString(),
                description: farmDetails[i]['description'].toString(),
                photo: farmDetails[i]['photo'].toString()),
          );
        }
        ;

        print('product details' + _gardens.toString());
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
