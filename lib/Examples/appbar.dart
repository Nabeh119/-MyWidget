import 'package:flutter/material.dart';

class ExAppBar extends StatelessWidget {
  const ExAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        //centerTitle: true,
        title: Text("AppBar"),
        leading: IconButton(
          //left
          onPressed: () {},
          icon: Icon(Icons.percent),
        ),
        elevation: 20,
        shadowColor: Colors.red,
        actions: [
          //Right
          IconButton(onPressed: () {}, icon: Icon(Icons.list)),
        ],
      ),
    );
  }
}
