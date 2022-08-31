import 'package:firebase_demo/auth/auth_credential.dart';
import 'package:firebase_demo/auth/singup_page.dart';
import 'package:firebase_demo/blog/blog_screen.dart';
import 'package:firebase_demo/home_page.dart';
import 'package:firebase_demo/register.dart';
import 'package:firebase_demo/upload/course.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: "Enter Your Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _passController,
              decoration: const InputDecoration(
                hintText: "Enter Your Password",
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
                      .signIn(email: email, password: password)
                      .then((result) {
                    if (result == null) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    } else {}
                  });
                },
                child: const Text("Sing In")),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const SingUp()));
                },
                child: const Text("No Account Please SingUp")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const HomePage()));
                },
                child: const Text("Go to user list")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const BlogScreen()));
                },
                child: const Text("My Blog")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const Course()));
                },
                child: const Text("Course")),
          ],
        ),
      ),
    );
  }
}
