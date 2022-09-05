import 'package:flutter/material.dart';
import 'package:part1/main.dart';

class PageTwo extends StatefulWidget {
  PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}
String selectedItem = "Nationality";
List myItems = ["Jordanian", "Syrain","Egyptian","Nationality"];
class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nationality"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Select your nationality",
                style: TextStyle(fontSize: 30),
              ),
              
              DropdownButton(
                value: selectedItem,
                items: myItems
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectedItem=val.toString();
                  });
                },
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                onPressed: () {
                  setState(() {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: ((context) {
                          return Home();
                        }),
                      ),
                    );
                  });
                },
                icon: Icon(Icons.home),
                label: Text("Go to home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
