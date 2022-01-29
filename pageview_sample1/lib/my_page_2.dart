import 'package:flutter/material.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("page2")),
      body: Center(
        child: Builder(builder: (context) {
          return const Text(
            "page 2",
            style: TextStyle(fontSize: 80),
          );
        }),
      ),
    );
  }
}
