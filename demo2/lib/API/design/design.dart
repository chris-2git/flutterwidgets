import 'package:demo2/API/api/api.dart';
import 'package:demo2/api/widget/widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class GardenScreen extends StatefulWidget {
  static const routename = 'all_gardens_screen';
  const GardenScreen({super.key});

  @override
  State<GardenScreen> createState() => _GardenScreenState();
}

class _GardenScreenState extends State<GardenScreen> {
  @override
  void initState() {
    Provider.of<GardenProvider>(context, listen: false)
        .getAllGardensData(context: context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final garden = Provider.of<GardenProvider>(context);
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
      body: garden.loadingSpinner
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('jjjjj'),
                CircularProgressIndicator(
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          : garden.gardens.isEmpty
              ? Text('No Famers...')
              : SizedBox(
                  height: size.height * 0.9,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 0.4),
                    scrollDirection: Axis.vertical,
                    itemCount: garden.gardens.length,
                    itemBuilder: (context, intex) {
                      return GardenWidget(
                        id: garden.gardens[intex].packageId,
                        name: garden.gardens[intex].packageName,
                        image: garden.gardens[intex].photo,
                        describtion: garden.gardens[intex].description,
                      );
                    },
                  ),
                ),
    );
  }
}
