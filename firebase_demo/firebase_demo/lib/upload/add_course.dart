import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _feeController = TextEditingController();

  XFile? _courseImage;
  String? _imageUrl;

  chooseImageFromG() async {
    ImagePicker picker = ImagePicker();
    _courseImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  chooseImageFromC() async {
    ImagePicker picker = ImagePicker();
    _courseImage = await picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  writeData() async {
    File imageFile = File(_courseImage!.path);

    FirebaseStorage storage = FirebaseStorage.instance;
    UploadTask uploadTask =
        storage.ref('courses').child(_courseImage!.name).putFile(imageFile);

    TaskSnapshot snapshot = await uploadTask;

    _imageUrl = await snapshot.ref.getDownloadURL();

    CollectionReference course =
        FirebaseFirestore.instance.collection('courses');

    course.add({
      'course_name': _nameController.text,
      'course_fee': _feeController.text,
      'img': _imageUrl
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: "Enter Course Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _feeController,
              decoration: const InputDecoration(
                hintText: "Enter Course Fee",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Center(
                  child: Container(
                      child: _courseImage == null
                          ? IconButton(
                              icon: const Icon(Icons.photo),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          actions: [
                                            InkWell(
                                              child: const Icon(Icons.camera),
                                              onTap: () {
                                                chooseImageFromC();
                                              },
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                              child: const Icon(Icons.photo),
                                              onTap: () {
                                                chooseImageFromG();
                                              },
                                            ),
                                          ],
                                        ));
                              },
                            )
                          : Image.file(
                              File(_courseImage!.path),
                            ))),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  writeData();
                },
                child: const Text("Save")),
          ],
        ),
      ),
    );
  }
}
