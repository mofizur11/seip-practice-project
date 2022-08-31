import 'package:firebase_demo/upload/add_course.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    addCourse() {
      return showModalBottomSheet(
          context: context, builder: (context) => const AddCourse());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Course List"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Course"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addCourse();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
