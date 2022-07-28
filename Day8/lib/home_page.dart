import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var student_list = [
    "tamim",
    "sakib",
    "musfik",
    "nasir",
    "mustafiz",
    "soriful",
    "sohan",
    "rakib",
    "tamim",
    "sakib",
    "musfik",
    "nasir",
    "mustafiz",
    "soriful",
    "sohan",
    "rakib",
    "tamim",
    "sakib",
    "musfik",
    "nasir",
    "mustafiz",
    "soriful",
    "sohan",
    "rakib",
  ];

  var student_list_details = [
    "tamim Is a very Good Player in Bangladesh and Good Cricketer",
    "sakib Is a very Good Player in Bangladesh and Good Cricketer",
    "musfik Is a very Good Player in Bangladesh and Good Cricketer",
    "nasir Is a very Good Player in Bangladesh and Good Cricketer",
    "mustafiz Is a very Good Player in Bangladesh and Good Cricketer",
    "soriful Is a very Good Player in Bangladesh and Good Cricketer",
    "sohan Is a very Good Player in Bangladesh and Good Cricketer",
    "rakib Is a very Good Player in Bangladesh and Good Cricketer",
    "tamim Is a very Good Player in Bangladesh and Good Cricketer",
    "sakib Is a very Good Player in Bangladesh and Good Cricketer",
    "musfik Is a very Good Player in Bangladesh and Good Cricketer",
    "nasir Is a very Good Player in Bangladesh and Good Cricketer",
    "mustafiz Is a very Good Player in Bangladesh and Good Cricketer",
    "soriful Is a very Good Player in Bangladesh and Good Cricketer",
    "sohan Is a very Good Player in Bangladesh and Good Cricketer",
    "rakib Is a very Good Player in Bangladesh and Good Cricketer",
    "tamim Is a very Good Player in Bangladesh and Good Cricketer",
    "sakib Is a very Good Player in Bangladesh and Good Cricketer",
    "musfik Is a very Good Player in Bangladesh and Good Cricketer",
    "nasir Is a very Good Player in Bangladesh and Good Cricketer",
    "mustafiz Is a very Good Player in Bangladesh and Good Cricketer",
    "soriful Is a very Good Player in Bangladesh and Good Cricketer",
    "sohan Is a very Good Player in Bangladesh and Good Cricketer",
    "rakib Is a very Good Player in Bangladesh and Good Cricketer",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Builder"),
        ),
        body: ListView.builder(
          itemCount: student_list.length,
          itemBuilder: (ctx, i) => Card(
            child: ListTile(
              subtitle: Text(student_list_details[i]),
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.call),
              title: Text(student_list[i]),
            ),
          ),
        ));
  }

}
