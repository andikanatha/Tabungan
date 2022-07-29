import 'package:flutter/material.dart';

class inputPhone extends StatefulWidget {
  const inputPhone({Key? key}) : super(key: key);

  @override
  State<inputPhone> createState() => _inputPhoneState();
}

class _inputPhoneState extends State<inputPhone> {
  TextEditingController ctrtabungan = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Total Tabungan"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: ctrtabungan,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Edit Tabungan"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, ctrtabungan.text);
                },
                child: Text("Edit"))
          ],
        ),
      ),
    );
  }
}