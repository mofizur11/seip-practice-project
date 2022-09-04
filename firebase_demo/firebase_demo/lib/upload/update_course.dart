import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdateCourse extends StatefulWidget {

  String docId;
  String cName;
  String cFee;
  String cImage;

  UpdateCourse(this.docId,this.cName,this.cFee,this.cImage, {Key? key}) : super(key: key);

  @override
  State<UpdateCourse> createState() => _UpdateCourseState();
}

class _UpdateCourseState extends State<UpdateCourse> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _feeController = TextEditingController();

  XFile? _courseImage;
  String? imageUrl;

  chooseImageFromG() async {
    ImagePicker picker = ImagePicker();
    _courseImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  // chooseImageFromC() async {
  //   ImagePicker picker = ImagePicker();
  //   _courseImage = await picker.pickImage(source: ImageSource.camera);
  //   setState(() {});
  // }


  updateMyCourse(selectedDocument) async {
    if (_courseImage == null) {
      CollectionReference updateCourse =
      FirebaseFirestore.instance.collection('courses');
      updateCourse.doc(selectedDocument).update({
        'course_name': _nameController.text,
        'course_fee': _feeController.text,
        'img': widget.cImage
      });
    } else {
      File imageFile = File(_courseImage!.path);

      FirebaseStorage storage = FirebaseStorage.instance;
      UploadTask uploadTask =
      storage.ref('courses').child(_courseImage!.name).putFile(imageFile);

      TaskSnapshot snapshot = await uploadTask;
      imageUrl = await snapshot.ref.getDownloadURL();

      CollectionReference courseData =
      FirebaseFirestore.instance.collection('courses');
      courseData.add({
        'course_name': _nameController.text,
        'course_fee': _feeController.text,
        'img': imageUrl
      });
    }
  }


  @override
  void initState() {
    super.initState();

    _nameController.text = widget.cName;
    _feeController.text = widget.cFee;
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
                child: Container(
                    child: _courseImage == null
                        ? Stack(
                      children: [
                        Image.network(widget.cImage),
                        CircleAvatar(
                          child: IconButton(
                            icon: const Icon(Icons.photo),
                            onPressed: () {
                              chooseImageFromG();
                            },
                          ),
                        )
                      ],
                    )
                        : Image.file(File(_courseImage!.path)))),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  updateMyCourse(widget.docId);
                  Navigator.pop(context);
                },
                child: const Text("Update")),
          ],
        ),
      ),
    );
  }
}
