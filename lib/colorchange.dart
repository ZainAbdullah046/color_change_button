import 'package:flutter/material.dart';

class colorchange extends StatefulWidget {
  const colorchange({super.key});

  @override
  State<colorchange> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<colorchange> {
  bool ispress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COLOR CHANGE BUTTON APP"),
        backgroundColor: Colors.blueAccent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              ispress = !ispress;
            });
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(ispress ? Colors.blue : Colors.red)),
          child: const Text(
            "PRESS HERE",
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
