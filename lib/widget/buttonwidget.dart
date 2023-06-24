//import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          //text
          title: const Text("container widget"),
          centerTitle: true,
          //BG colour
          backgroundColor: const Color.fromARGB(255, 8, 153, 27),

          //leading
          leading: const Icon(Icons.home),
          //Actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
          //shape
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          //elevation
          elevation: 30,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /////////////////////////////////
              TextButton(
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 30)),
                      foregroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 219, 19, 19))),
                  onPressed: () {
                    //String message = "ddd";
                    //log('data: data');
                    debugPrint("this printes inside DEBUG CONSOLE ");
                  },
                  child: const Text(
                      "TEXT BUTTON (this prints a text in DEBUG COLSOLE)")),
              /////////////////////////////////
              TextButton.icon(
                  onPressed: () {
                    debugPrint('just clicked');
                  },
                  //child: const Text("data"),
                  onLongPress: () {
                    debugPrint("long pressed");
                  },
                  icon: Icon(Icons.home),
                  label: Text("Home")),
              ////////////////////
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      padding: MaterialStateProperty.all(const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        top: 10,
                      )),
                      foregroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 247, 246, 245)),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      minimumSize:
                          MaterialStateProperty.all(const Size(20, 30)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 20))),
                  onPressed: () {
                    debugPrint("clicked on the sing in");
                  },
                  child: const Text("SING IN")),

              OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.yellow, width: 2)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 20)),
                      minimumSize:
                          MaterialStateProperty.all(const Size(20, 30)),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {},
                  child: const Text("sing up"))
            ],
          ),
        ));
  }
}
