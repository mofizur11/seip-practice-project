import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 5),
                )
              ]),
          height: 50,
          width: 150,
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                height: 50,
                width: 100,
                child: const Center(
                  child: Text("Submit"),
                ),
              ),
              const Icon(Icons.home),
            ],
          ),
        ),
      ),
    );
  }
}
