import 'dart:convert';
import 'dart:io';

import 'package:demo2/API2/api/model/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;

class FlimProvider with ChangeNotifier {
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

  List<FilmDetails> _flim = [];
  List<FilmDetails> get flims {
    return [..._flim];
  }

  Future getAllFarmersData({required BuildContext context}) async {
    try {
      _isLoading = true;
      // var headers = {'Cookie': 'ci_session=c7lis868nec6nl8r1lb5el72q8n26upv'};
      var response = await https.get(
        Uri.parse(
            "http://campus.sicsglobal.co.in/Project/Local_Film_Festival/api/view_all_film.php"),
      );

      print(
          "http://campus.sicsglobal.co.in/Project/Local_Film_Festival/api/view_all_film.php");

      print(response.body);

      if (response.statusCode == 200) {
        _isLoading = false;
        _flim = [];
        var extractedData = json.decode(response.body);
        //  print(json.decode(response.body) + 'printed extrated data');
        final List<dynamic> flimDetails = extractedData["filmDetails"];
        for (var i = 0; i < flimDetails.length; i++) {
          _flim.add(
            FilmDetails(
              filmId: flimDetails[i]['film_id'].toString(),
              title: flimDetails[i]['title'].toString(),
              director: flimDetails[i]['director'].toString(),
              producer: flimDetails[i]['producer'].toString(),
              screenwriter: flimDetails[i]['screenwriter'].toString(),
              category: flimDetails[i]['category'].toString(),
              language: flimDetails[i]['language'].toString(),
              duration: flimDetails[i]['duration'].toString(),
              releaseYear: flimDetails[i]['release_year'].toString(),
              cast: flimDetails[i]['cast'].toString(),
              productionCompany:
                  flimDetails[i]['production_company'].toString(),
              poster: flimDetails[i]['poster'].toString(),
              comments: flimDetails[i]['comments'].toString(),
            ),
          );
        }
        ;

        print('product details' + _flim.toString());
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
