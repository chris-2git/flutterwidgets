import 'package:demo2/API2/api/api.dart';
import 'package:demo2/API2/api/widget/widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Flimscreen extends StatefulWidget {
  static const routename = "all_film_screen";
  const Flimscreen({super.key});

  @override
  State<Flimscreen> createState() => _FamersScreenState();
}

class _FamersScreenState extends State<Flimscreen> {
  @override
  void initState() {
    Provider.of<FlimProvider>(context, listen: false)
        .getAllFarmersData(context: context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final flim = Provider.of<FlimProvider>(context);
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
      body: flim.loadingSpinner
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
          : flim.flims.isEmpty
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
                      return Filmsdetails(
                        filmId: flim.flims[index].filmId,
                        title: flim.flims[index].title,
                        director: flim.flims[index].director,
                        producer: flim.flims[index].producer,
                        screenwriter: flim.flims[index].screenwriter,
                        category: flim.flims[index].category,
                        language: flim.flims[index].language,
                        releaseYear: flim.flims[index].releaseYear,
                        poster: flim.flims[index].poster,
                      );
                    },
                  ),
                ),
    );
  }
}
