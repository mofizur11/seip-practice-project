import 'package:flutter/material.dart';

class Job {
  String companyLogo;
  String companyName;
  String jobTitle;
  String jobLocation;
  List<String> jobDesc;

  Job(this.companyLogo, this.companyName, this.jobTitle, this.jobLocation,
      this.jobDesc);

  static List<Job> getAllJob() {
    return [
      Job("assets/images/google_logo.png", "Google LLC",
          "Princial Product Design", "412 Marion, New York, United States", [
        "Bachelors degree in industrial design, manufacturing, engineering, or a related field",
        "A creative eye, good imagination, and vision",
        "A firm grasp of market trends and consumer prefrences.",
        "Practical experience using computer-aided design software.",
        "Good technical and IT skills.",
      ]),
      Job("assets/images/linkedin_logo.png", "Linkedin",
          "Linkedin Product Design", "412 Marion, New York, United States", [
        "Bachelors degree in industrial design, manufacturing, engineering, or a related field",
        "A creative eye, good imagination, and vision",
        "A firm grasp of market trends and consumer prefrences.",
        "A creative eye, good imagination, and vision",
        "A firm grasp of market trends and consumer prefrences.",
        "Practical experience using computer-aided design software.",
        "Good technical and IT skills.",
      ]),
      Job("assets/images/google_logo.png", "Google", "Principle Product Design",
          "412 Marion, New York, United States", [
        "Bachelors degree in industrial design, manufacturing, engineering, or a related field",
        "A creative eye, good imagination, and vision",
        "A firm grasp of market trends and consumer prefrences.",
        "A creative eye, good imagination, and vision",
        "A firm grasp of market trends and consumer prefrences.",
        "A creative eye, good imagination, and vision",
        "A firm grasp of market trends and consumer prefrences.",
        "A creative eye, good imagination, and vision",
        "A firm grasp of market trends and consumer prefrences.",
        "Practical experience using computer-aided design software.",
        "Good technical and IT skills.",
      ]),
    ];
  }
}
