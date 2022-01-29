import 'package:flutter/material.dart';

class MyPage3 extends StatelessWidget {
  const MyPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page3"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => {Navigator.of(context).pop()},
                child: const Text("back", style: TextStyle(fontSize: 80)))));
  }
}
