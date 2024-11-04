import 'package:flutter/material.dart';

class GardenWidget extends StatefulWidget {
  final String id;
  final String name;
  final String image;
  final String describtion;
  const GardenWidget({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.describtion,
  });

  @override
  State<GardenWidget> createState() => _GardenWidgetState();
}

class _GardenWidgetState extends State<GardenWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.40,
          height: size.height * 0.30,
          decoration: BoxDecoration(
            // border: Border.all(
            //   color: Colors.black,
            // ),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                widget.image,
              ),
            ),
          ),
        ),
        Container(
          width: size.width * 0.40,
          height: size.height * 0.30,
          child: Column(
            children: [
              Text(
                widget.name,
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              Text(
                widget.describtion,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
