import 'package:flutter/material.dart';

class MyPage3 extends StatelessWidget {
  const MyPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("page3")),
      body: Center(
        child: Builder(builder: (context) {
          return const Text(
            "page 3",
            style: TextStyle(fontSize: 80),
          );
        }),
      ),
    );
  }
}
