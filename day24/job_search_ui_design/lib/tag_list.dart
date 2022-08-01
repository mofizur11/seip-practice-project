import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  List<String> tagList = ["All", "Popular", "Featured"];

  bool isSeleted = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: tagList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 120,
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isSeleted == true ? Colors.yellow : Colors.grey,
              ),
              child: Text(tagList[index]),
            );
          }),
    );
  }
}
