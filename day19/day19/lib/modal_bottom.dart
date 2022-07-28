import 'package:flutter/material.dart';

class ModalBottomDemo extends StatefulWidget {
  const ModalBottomDemo({Key? key}) : super(key: key);

  @override
  State<ModalBottomDemo> createState() => _ModalBottomDemoState();
}

class _ModalBottomDemoState extends State<ModalBottomDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => ListTile(
                  title: Text("Modal Bottom Sheet"),
                  leading: Icon(Icons.call),
                  subtitle: Text("this is modal simple modal bottom sheet"),
                ));
      },
      child: Text("Modal Bottom"),
    ));
  }
}
