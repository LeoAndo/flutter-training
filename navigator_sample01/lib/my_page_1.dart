import 'package:flutter/material.dart';
import 'my_page_2.dart';

class MyPage1 extends StatelessWidget {
  const MyPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("page1")),
      body: Center(
        child: TextButton(
          onPressed: () => {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const MyPage2();
            }))
          },
          child: const Text(
            "next",
            style: TextStyle(fontSize: 80),
          ),
        ),
      ),
    );
  }
}
