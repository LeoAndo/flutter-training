import 'package:flutter/material.dart';

class EphemeralStatePage extends StatefulWidget {
  const EphemeralStatePage({Key? key}) : super(key: key);

  @override
  State<EphemeralStatePage> createState() => _EphemeralStatePageState();
}

class _EphemeralStatePageState extends State<EphemeralStatePage> {
  int _navBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ephemeral State Sample"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'FoodBank',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarm',
          ),
        ],
        currentIndex: _navBarIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (newIndex) {
          setState(() {
            _navBarIndex = newIndex;
          });
        },
      ),
    );
  }
}
