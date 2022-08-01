import 'package:flutter/material.dart';
import 'package:job_search_ui_design/job.dart';

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  final jobList = Job.getAllJob();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: jobList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              height: 280,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          child: Image.asset(jobList[index].companyLogo)),
                      SizedBox(
                        width: 12,
                      ),

                      Text(jobList[index].companyName),
                      Spacer(),
                      Icon(Icons.bookmark_outline_outlined),
                      // Text(jobList[index].jobTitle),
                      // Text(jobList[index].jobLocation),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
