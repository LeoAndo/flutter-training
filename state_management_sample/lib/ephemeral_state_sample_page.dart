import 'package:flutter/material.dart';

class EphemeralStatePage extends StatefulWidget {
  const EphemeralStatePage({Key? key}) : super(key: key);

  @override
  State<EphemeralStatePage> createState() => _EphemeralStatePageState();
}

class _EphemeralStatePageState extends State<EphemeralStatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ephemeral State Sample"),
      ),
    );
  }
}
