import 'package:flutter/material.dart';

class MyPage1 extends StatelessWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("page1")),
      body: Center(
        child: Builder(builder: (context) {
          return const Text(
            "page 1",
            style: TextStyle(fontSize: 80),
          );
        }),
      ),
    );
  }
}
