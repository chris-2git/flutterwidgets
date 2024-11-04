import 'package:demo2/ottplatform/historysub/historysub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Historyott extends StatefulWidget {
  const Historyott({super.key});

  @override
  State<Historyott> createState() => _HistoryottState();
}

class _HistoryottState extends State<Historyott> {
  List<String> name = [
    'A Quest pice 2',
    'Money heist',
    'The Flash',
    'Furie',
    'Joker',
    'Leo',
    'mulan'
  ];
  List<String> img = [
    'assets/vikingspic.jpg',
    'assets/money.jpg',
    'assets/theflashpic.jpg',
    'assets/cidmoosapic.jpeg',
    'assets/deadpoolpic.jpeg',
    'assets/leopic.jpeg',
    'assets/mulanpic.jpg'
  ];
  List<String> time = [
    '02:32:34/02:25:00',
    '00:45:54/00:26:34',
    '03:34:59/01:45:23',
    '02:32:34/02:25:00',
    '00:45:54/00:26:34',
    '03:34:59/01:45:23',
    '03:34:59/01:45:23',
  ];
  List<String> watch = [
    'Last Watched:2h ago',
    'Last Watched:1h ago',
    'Last Watched:2h ago',
    'Last Watched:1h ago',
    'Last Watched:2h ago',
    'Last Watched:1h ago',
    'Last Watched:2h ago',
  ];
  List<IconData> icon = [
    Icons.play_arrow,
    Icons.play_arrow,
    Icons.play_arrow,
    Icons.play_arrow,
    Icons.play_arrow,
    Icons.play_arrow,
    Icons.play_arrow,
  ];
  List<IconData> arrow = [
    Icons.arrow_forward_ios_rounded,
    Icons.arrow_forward_ios_rounded,
    Icons.arrow_forward_ios_rounded,
    Icons.arrow_forward_ios_rounded,
    Icons.arrow_forward_ios_rounded,
    Icons.arrow_forward_ios_rounded,
    Icons.arrow_forward_ios_rounded,
  ];
  bool colin = false;
  bool coloin = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      coloin = !coloin;
                      print(coloin);
                    });
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.30,
                    decoration: BoxDecoration(
                        color: coloin ? Colors.red : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: coloin
                            ? Border.all(color: Colors.red)
                            : Border.all(color: Colors.white)),
                    child: Center(
                        child: Text(
                      'Watching',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      colin = !colin;
                      print('');
                    });
                  },
                  child: Container(
                    height: size.height * 0.07,
                    width: size.width * 0.30,
                    decoration: BoxDecoration(
                        color: colin ? Colors.red : Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        border: colin
                            ? Border.all(color: Colors.red)
                            : Border.all(color: Colors.white)),
                    child: Center(
                      child: Text(
                        'Downloaded',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: img.length,
                itemBuilder: (context, index) {
                  return Historysub(
                    name: name[index],
                    img: img[index],
                    time: time[index],
                    watch: watch[index],
                    icon: icon[index],
                    arrow: arrow[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
