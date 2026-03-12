import 'package:flutter/material.dart';

class ExBottomSheet extends StatefulWidget {
  @override
  State<ExBottomSheet> createState() => _ExBottomSheetState();
}

class _ExBottomSheetState extends State<ExBottomSheet> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("BottomSheet&SnackBar"),
      ),
      body: ListView(
        children: [
          Center(
            child: MaterialButton(
              child: Text("Show"),
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                scaffoldkey.currentState!.showBottomSheet((context) =>
                    Container(
                      color: Colors.red,
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text("Choose Image",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          Text("From Gallery",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                          Text("From Camera",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ],
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
