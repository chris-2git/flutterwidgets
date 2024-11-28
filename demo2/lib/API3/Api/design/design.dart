import 'package:demo2/API2/api/api.dart';
import 'package:demo2/API2/api/widget/widget.dart';
import 'package:demo2/API3/Api/api.dart';
import 'package:demo2/API3/Api/widget/widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Categoriescreen extends StatefulWidget {
  static const routename = " Categories";
  const Categoriescreen({
    super.key,
  });

  @override
  State<Categoriescreen> createState() => _FamersScreenState();
}

class _FamersScreenState extends State<Categoriescreen> {
  @override
  void initState() {
    Provider.of<CategoriesProvider>(context, listen: false)
        .CategoriesData(context: context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cat = Provider.of<CategoriesProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          'Farms',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: cat.loadingSpinner
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          : cat.cats.isEmpty
              ? Text('No Famers...')
              : SizedBox(
                  height: size.height * 0.9,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 0.6),
                    itemBuilder: (context, index) {
                      return Categories(
                        idCategory: cat.cats[index].idCategory,
                        strCategory: cat.cats[index].strCategory,
                        strCategoryThumb: cat.cats[index].strCategoryThumb,
                        strCategoryDescription:
                            cat.cats[index].strCategoryDescription,
                      );
                    },
                  ),
                ),
    );
  }
}
