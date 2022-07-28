import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = false;
  bool isFemale = false;
  int _value = 100;
  int weight = 60;
  int age = 26;
  var bmi;
  var result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xff0A0E21),
        title: const Text(
          "BMI CALCULATOR",
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = true;
                            isFemale = false;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: isMale == true
                                  ? Colors.red
                                  : const Color(0xff111328),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.male,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                      fontSize: 24, color: Color(0xff4C4F5E)),
                                )
                              ]),
                        ),
                      )),
                  Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = false;
                            isFemale = true;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: isFemale == true
                                  ? Colors.red
                                  : const Color(0xff111328),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.female,
                                  size: 100,
                                  color: Colors.white,
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(
                                      fontSize: 24, color: Color(0xff4C4F5E)),
                                )
                              ]),
                        ),
                      )),
                ],
              )),
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color(0xff111328),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT",
                        style:
                            TextStyle(fontSize: 24, color: Color(0xff4C4F5E)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            _value.toString(),
                            style: const TextStyle(
                                fontSize: 42,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff4C4F5E)),
                          ),
                        ],
                      ),
                      Slider(
                        min: 0,
                        max: 300,
                        value: _value.toDouble(),
                        activeColor: Colors.white,
                        onChanged: (value) {
                          setState(() {
                            _value = value.toInt();
                          });
                        },
                      ),
                    ]),
              )),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: const Color(0xff111328),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "WEIGHT",
                                style: TextStyle(
                                    fontSize: 24, color: Color(0xff4C4F5E)),
                              ),
                              Text(
                                weight.toString(),
                                style: const TextStyle(
                                    fontSize: 42,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(0xff4C4F5E),
                                      child: Icon(Icons.remove, size: 20),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(0xff4C4F5E),
                                      child: Icon(Icons.add, size: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      )),
                  Expanded(
                      flex: 5,
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: const Color(0xff111328),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "AGE",
                                style: TextStyle(
                                    fontSize: 24, color: Color(0xff7B7C87)),
                              ),
                              Text(
                                age.toString(),
                                style: const TextStyle(
                                    fontSize: 42,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(0xff4C4F5E),
                                      child: Icon(Icons.remove, size: 20),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Color(0xff4C4F5E),
                                      child: Icon(Icons.add, size: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      )),
                ],
              )),
          Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  bmi = weight / (_value * _value) * 10000;
                  if (bmi < 19) {
                    result = "You are Under Weight. Please eat more";
                  } else if (bmi > 18 && bmi < 24) {
                    result = "You Are Okey!";
                  } else {
                    result = "You Are Over Weight. Pleass eat less";
                  }
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                              "Your Height = $_value \nYour Weight $weight \nYour Age = $age  \nYour BMI = ${bmi.toString()} "),
                        );
                      });
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  color: const Color(0xffFB1555),
                  child: const Text(
                    "CALCULATE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
