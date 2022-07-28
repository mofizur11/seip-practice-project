import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLacher extends StatefulWidget {
  const UrlLacher({Key? key}) : super(key: key);

  @override
  State<UrlLacher> createState() => _UrlLacherState();
}

class _UrlLacherState extends State<UrlLacher> {
  Uri _url = Uri.parse("https://pub.dev/");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              launchUrl(_url);
            },
            child: Text("GO Web")),
      ),
    );
  }
}
