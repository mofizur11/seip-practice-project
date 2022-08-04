import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents(
      {required this.title, required this.image, required this.desc});
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Welcome \nto \nGroceryus",
    image:
        "https://ouch-cdn2.icons8.com/mrOqTR7o-zdiAVkcd1G-5cFbUm4n2uB9XXXwwXQywCg/rs:fit:256:204/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNTY0/L2ZmYmRhYTM3LWVl/YTMtNDA4ZC04NWE5/LWRjOTc0YzVkY2Ni/My5wbmc.png",
    desc: "15000+ Grocery items available only for you.",
  ),
  OnboardingContents(
    title: "Fast Delivery",
    image:
        "https://www.bashimedia.com/wp-content/uploads/2022/03/Director-conducts-an-interview-online.png",
    desc: "Very fast came day delivery and custom delivery system.",
  ),
  OnboardingContents(
    title: "Fast Delivery",
    image:
        "https://www.bashimedia.com/wp-content/uploads/2022/03/Director-conducts-an-interview-online.png",
    desc: "Very fast came day delivery and custom delivery system.",
  ),
];
