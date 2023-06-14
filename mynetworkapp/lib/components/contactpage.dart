import 'package:flutter/material.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({Key? key, this.name = "Empty"}) : super(key: key);

  final String name;
  @override
  _ContactpageState createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 169, 142, 61),
        child: Column(
          children: [
            Text(widget.name),
            const Text("2"),
            const Text("3"),
            const Text("4"),
            const Text("5"),
          ],
        ),
      ),
    );
  }
}
