import 'package:flutter/material.dart';

class ExButtomNavigationBar extends StatefulWidget {
  @override
  State<ExButtomNavigationBar> createState() => _ExButtomNavigationBarState();
}

class _ExButtomNavigationBarState extends State<ExButtomNavigationBar> {
  int selectedindex = 0;

  List<Widget> listwidget = [
    Text("Page1", style: TextStyle(fontSize: 30)),
    Text("Page2", style: TextStyle(fontSize: 30)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(() {
            selectedindex = val;
          });
        },
        currentIndex: selectedindex,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedFontSize: 20,
        unselectedFontSize: 14,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("BottomNavigationBar"),
      ),
      body: Container(
        child: listwidget.elementAt(selectedindex),
      ),
    );
  }
}
