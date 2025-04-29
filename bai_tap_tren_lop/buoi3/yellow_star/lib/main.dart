import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Ví dụ Positioned"),
          ),
          body: Stack(
            children: [
              Container(color: Colors.red),
              const Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.star,
                  size: 200,
                  color: Colors.yellow,
                ),
              ),
            ],
          )),
    );
  }
}

