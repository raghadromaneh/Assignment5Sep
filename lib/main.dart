import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:part1/screens/pageone.dart';
import 'package:part1/screens/pagetwo.dart';
// import '../main.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 117, 136),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.shopping_cart),
        //   ),
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 78, 98, 107)),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return PageOne();
                      }),
                    ),
                  );
                });
              },
              icon: Icon(Icons.flag),
              label: Text(
                "Go to page one",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ElevatedButton.icon(
               style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 78, 98, 107)),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) {
                        return PageTwo();
                      }),
                    ),
                  );
                });
              },
              icon: Icon(Icons.flag),
              label: Text(
                "Go to page two",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
