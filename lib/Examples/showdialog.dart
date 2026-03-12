import 'package:flutter/material.dart';

class ExShowDialog extends StatelessWidget {
  const ExShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("ShowDialog"),
      ),
      body: ListView(
        children: [
          MaterialButton(
            color: Colors.red,
            textColor: Colors.white,
            child: Text("Show Alert"),
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      titleTextStyle:
                          TextStyle(fontSize: 20, color: Colors.red),
                      title: Text("Warning"),
                      content: Text("Are you sure ?"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("Ok")),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Cancel"))
                      ],
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
