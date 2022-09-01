import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_demo/upload/add_course.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  final Stream<QuerySnapshot> _courseStream =
      FirebaseFirestore.instance.collection('courses').snapshots();

  @override
  Widget build(BuildContext context) {
    addCourse() {
      return showModalBottomSheet(
          context: context, builder: (context) => const AddCourse());
    }

    Future<void> deleteCourse(selectedDocumentId) {
      return FirebaseFirestore.instance
          .collection("courses")
          .doc(selectedDocumentId)
          .delete();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Course List"),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _courseStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text("no data found");
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(5),
                child: Stack(
                  children: [
                    Card(
                      elevation: 3,
                      child: Container(
                        color: Colors.white.withOpacity(0.5),
                        width: MediaQuery.of(context).size.width,
                        height: 250,
                        child: Column(
                          children: [
                            Expanded(
                                child: Card(
                                    elevation: 3,
                                    child: Image.network(
                                      "${data["img"]}",
                                      fit: BoxFit.cover,
                                    ))),
                            Text("${data["course_name"]}"),
                            Text("${data["course_fee"]}"),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 5,
                        right: 5,
                        child: Container(
                          color: Colors.green.withOpacity(0.3),
                          padding: const EdgeInsets.all(10),
                          height: 80,
                          width: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  )),
                              InkWell(
                                  onTap: () {
                                    deleteCourse(document.id);
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  )),
                            ],
                          ),
                        ))
                  ],
                ),
              );
            }).toList(),
          );
        },
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
