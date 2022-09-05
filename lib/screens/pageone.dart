import 'package:flutter/material.dart';
import 'package:part1/main.dart';

class PageOne extends StatefulWidget {
  PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

String selectedItem = "Gender";
List myItems = ["Male", "Female","Gender"];

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gender"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "Select your gender",
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
