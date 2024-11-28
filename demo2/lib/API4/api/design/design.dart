import 'package:demo2/API4/api/api.dart';
import 'package:demo2/API4/api/widget/widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Productscreen extends StatefulWidget {
  static const routename = " Categories";
  const Productscreen({
    super.key,
  });

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  @override
  void initState() {
    Provider.of<ProductProvider>(context, listen: false)
        .ProductData(context: context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cat = Provider.of<ProductProvider>(context);
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
                      return Productswid(
                        id: cat.cats[index].id,
                        name: cat.cats[index].name,
                        categoryId: cat.cats[index].categoryId,
                        file: cat.cats[index].file,
                        quantity: cat.cats[index].quantity,
                        description: cat.cats[index].description,
                        price: cat.cats[index].price,
                      );
                    },
                  ),
                ),
    );
  }
}
