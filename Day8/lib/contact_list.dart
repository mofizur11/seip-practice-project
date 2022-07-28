import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List contacts = [
    {"name": "Rakib", "phone": "0125400"},
    {"name": "Aakib", "phone": "0125400"},
    {"name": "Cakhhib", "phone": "01201015400"},
    {"name": "Kakghgfib", "phone": "0125400"},
    {"name": "Makihfb", "phone": "0125400"},
    {"name": "Nakib", "phone": "0125400"},
    {"name": "Uahgfkib", "phone": "0125400"},
    {"name": "Rakib", "phone": "0125400"},
    {"name": "Aakib", "phone": "0125400"},
    {"name": "Cakhhib", "phone": "01201015400"},
    {"name": "Kakghgfib", "phone": "0125400"},
    {"name": "Makihfb", "phone": "0125400"},
    {"name": "Nakib", "phone": "0125400"},
    {"name": "Uahgfkib", "phone": "0125400"},
    {"name": "Rakib", "phone": "0125400"},
    {"name": "Aakib", "phone": "0125400"},
    {"name": "Cakhhib", "phone": "01201015400"},
    {"name": "Kakghgfib", "phone": "0125400"},
    {"name": "Makihfb", "phone": "0125400"},
    {"name": "Nakib", "phone": "0125400"},
    {"name": "Uahgfkib", "phone": "0125400"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
      ),
      body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading:
                      CircleAvatar(child: Text(contacts[index]["name"][0])),
                  title: Text(contacts[index]["name"]),
                  subtitle: Text(contacts[index]["phone"]),
                ),
              )),
    );
  }
}
