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
        title: const Center(
          child: Text(
            "COLOR CHANGE BUTTON APP",
            style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
        backgroundColor: Colors.black87,
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
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
