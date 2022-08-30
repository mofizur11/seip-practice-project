import 'package:firebase_demo/auth/auth_credential.dart';
import 'package:firebase_demo/auth/login_page.dart';
import 'package:firebase_demo/home_page.dart';
import 'package:firebase_demo/register.dart';
import 'package:firebase_demo/user_details.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sing Up"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passController,
              decoration: const InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  final authcre = AuthCredential();

                  var email = _emailController.text;
                  var password = _passController.text;
                  authcre
                      .signUp(email: email, password: password)
                      .then((result) {
                    if (result == null) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    } else {}
                  });
                },
                child: const Text("Sing up")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const Login()));
                },
                child: const Text("Already SingUp Please Login")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const HomePage()));
                },
                child: const Text("Go to user list")),
          ],
        ),
      ),
    );
  }
}
