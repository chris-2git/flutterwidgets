import 'package:flutter/material.dart';

class GardenWidget extends StatefulWidget {
  final String id;
  final String name;
  final String image;
  final String description;
  const GardenWidget({
    super.key,
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  @override
  State<GardenWidget> createState() => _GardenWidgetState();
}

class _GardenWidgetState extends State<GardenWidget> {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(color: Colors.black);
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
          height: size.height * 0.35,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 145, 185, 204),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(offset: Offset(0, 5), blurRadius: 10),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Descrpition ${widget.description}",
                  style: style,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
