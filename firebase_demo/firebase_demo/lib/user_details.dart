import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
    const UserDetails({this.fName,this.lName,this.phone,this.age,this.address,this.images});

  final String? fName,lName,phone,age,address,images;

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.fName} ${widget.lName}"),
      ),

      body: Center(
        child: Column(
          children: [
            Image.network("${widget.images}"),
            Text("${widget.phone}"),
            const SizedBox(height: 10,),
            Text("${widget.age}"),
            const SizedBox(height: 10,),
            Text("${widget.address}"),
          ],
        ),
      ),
    );
  }
}
