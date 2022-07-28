import 'package:day21/user_model.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  UserDetails({Key? key, this.model}) : super(key: key);

  UserModel? model;

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("User Details"),
      ),
      body: Column(
        children: [
          Image.network(
            "${widget.model?.img}",
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 5,
          ),
          Text("${widget.model?.name}"),
          Text("${widget.model?.details}"),
          Text(widget.model?.gender == true ? "Male" : "Female"),
        ],
      ),
    );
  }
}
