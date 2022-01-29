import 'package:flutter/material.dart';

import 'my_page_3.dart';

class MyPage2 extends StatelessWidget {
  const MyPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("page2"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
              onPressed: () => {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const MyPage3();
                    }))
                  },
              child: const Text("next", style: TextStyle(fontSize: 80))),
          TextButton(
              onPressed: () => {Navigator.of(context).pop()},
              child: const Text("back", style: TextStyle(fontSize: 80)))
        ])));
  }
}
