import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  static const String routeName = 'contacts';
  String name = '';
  String number = '';

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  bool isvisible = true;
  String name = '';
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Contacts Screen'),
          centerTitle: true,
          backgroundColor: Colors.blue),
      body: Container(
        child: Column(children: <Widget>[
          Column(children: [
            TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  labelText: 'Enter Your Name Here',
                )),
            const SizedBox(
              height: 15,
            ),
            TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60)),
                  hintText: 'Enter Your Number Here',
                )),
          ]),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
                minimumSize: Size.fromHeight(50),
              ),
              onPressed: () {
                setState(() {
                  isvisible = !isvisible;
                });
              },
              child: Text("Add")),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              minimumSize: Size.fromHeight(50),
            ),
            onPressed: () {
              setState(() {
                isvisible = !isvisible;
              });
            },
            child: const Text(
              "Delete",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Visibility(
            visible: !isvisible,
            child: TextField(
                decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            )),
          )
        ]),
      ),
    );
  }

  updateStatus() {}
}
