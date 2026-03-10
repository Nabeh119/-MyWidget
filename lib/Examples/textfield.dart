import 'package:flutter/material.dart';

class ExTextField extends StatefulWidget {
  @override
  State<ExTextField> createState() => _ExTextFieldState();
}

class _ExTextFieldState extends State<ExTextField> {
  String? mytext;

  TextEditingController username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("TextField"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  labelText: "User Name",
                  //  hintText: "User Name",
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.red,
                  suffix: Icon(Icons.heart_broken),
                  fillColor: Colors.orange,
                  filled: true,
                ),
              ),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    "Email",
                    style: TextStyle(color: Colors.red),
                  ),
                  //hintText: "Email",
                  hintStyle: TextStyle(color: Colors.red),
                  suffixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.email)),
                ),
              ),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  iconColor: Colors.red,
                ),
              ),
              SizedBox(height: 5),
              Divider(color: Colors.black, thickness: 10),
              SizedBox(height: 5),
              TextField(
                // enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.yellow,
                    width: 20,
                  )),
                ),
              ),
              SizedBox(height: 5),
              Divider(color: Colors.black, thickness: 10),
              SizedBox(height: 5),
              TextField(
                maxLength: 10,
                keyboardType: TextInputType.name,
                //maxLines: 3,
                // minLines: 1,
              ),
              SizedBox(height: 5),
              Divider(color: Colors.black, thickness: 10),
              SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                controller: username,
              ),
              MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Print"),
                  onPressed: () {
                    print(username.text);
                  }),
              SizedBox(height: 5),
              Divider(color: Colors.black, thickness: 10),
              SizedBox(height: 5),
              TextField(
                onChanged: (value) {
                  setState(() {
                    mytext = value;
                  });
                },
              ),
              MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Print"),
                  onPressed: () {
                    print('=========================');
                    print(mytext);
                  }),
              Text("${mytext}")
            ],
          ),
        ],
      ),
    );
  }
}
