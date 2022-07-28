import 'package:day21/details.dart';
import 'package:day21/user_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final mylist = UserModel.getAllList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: mylist.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserDetails(
                                model: mylist[index],
                              )));
                    },
                    child: Card(
                      color: Colors.blueAccent,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(mylist[index].img),
                        ),
                        title: Text(mylist[index].name,
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text(
                          mylist[index].details,
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Text(
                            mylist[index].gender == true
                                ? "Male"
                                : mylist[index].gender == false
                                    ? "Female"
                                    : "Others",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  );
                },
              )),
          Expanded(flex: 5, child: ListTile()),
        ],
      ),
    );
  }
}
