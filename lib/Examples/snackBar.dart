import 'package:flutter/material.dart';

class ExSnackBar extends StatelessWidget {
  const ExSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("SnackBar"),
      ),
      body: ListView(
        children: [
          MaterialButton(
            child: Text("Show SnackBar and copy"),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  action: SnackBarAction(label: "Ok", onPressed: () {}),
                  duration: Duration(seconds: 3),
                  content: Text(
                    "Copied!",
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
