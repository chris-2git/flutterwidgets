import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Flimscreen extends StatefulWidget {
  const Flimscreen({super.key});

  @override
  State<Flimscreen> createState() => _FamersScreenState();
}

class _FamersScreenState extends State<Flimscreen> {
  @override
  void initState() {
    Provider.of<Flimscreen>(context, listen: false)
        .getAllFlimcreen(context: context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final farmer = Provider.of<Flimscreen>(context);
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
      body: FadeInUp(
        duration: const Duration(milliseconds: 3000),
        child: farmer.loadingSpinner
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LoadingScreen(title: 'Loading'),
                  CircularProgressIndicator(
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              )
            : Flimscreen.flimscreens.isEmpty
                ? Text('No Famers...')
                : SizedBox(
                    height: size.height * 0.9,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: farmer.flimscreens.length,
                      itemBuilder: (context, intex) {
                        return getAllFlimcreen(
                          id: farmer.flimscreens[intex].id,
                          name: farmer.flimscreens[intex].name,
                          farmname: farmer.flimscreens[intex].farmName,
                          address: farmer.flimscreens[intex].address,
                          image: farmer.flimscreens[intex].file,
                          email: farmer.flimscreens[intex].email,
                          farmstatus: farmer.flimscreens[intex].farmerStatus,
                        );
                      },
                    ),
                  ),
      ),
    );
  }
}
