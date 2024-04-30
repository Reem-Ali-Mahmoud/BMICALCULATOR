import 'dart:math';

import 'package:bmi_calc/Screens/home_screen/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  Color color = Color.fromARGB(35, 255, 255, 255);
  double height = 150.0;
  int age = 20;
  int weight = 50;
  String range = "normal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 3, 31),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 10, 30),
                child: Text(
                  "BMICALCULATOR",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: !isMale ? color : Colors.deepPurple,
                        ),
                        height: 150,
                        child: const Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Icon(
                                  Icons.male,
                                  color: Color.fromARGB(230, 255, 255, 255),
                                  size: 80,
                                ),
                              ),
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(211, 255, 255, 255)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isMale ? color : Colors.deepPurple,
                        ),
                        height: 150,
                        child: const Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Icon(
                                  Icons.female,
                                  color: Color.fromARGB(230, 255, 255, 255),
                                  size: 80,
                                ),
                              ),
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(211, 255, 255, 255)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(35, 255, 255, 255)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 30, 10, 50),
                        child: Column(
                          children: [
                            Text(
                              "HEIGHT",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(115, 255, 255, 255)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(child: Container()),
                                Text(
                                  "${height.round()} ",
                                  style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                Text(
                                  "cm ",
                                  style: TextStyle(
                                      fontSize: 27,
                                      color:
                                          Color.fromARGB(115, 255, 255, 255)),
                                ),
                                Expanded(child: Container())
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Slider(
                                min: 100.0,
                                max: 250.0,
                                value: height,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue;
                                    print(height);
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(35, 255, 255, 255),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(220, 255, 255, 255)),
                              ),
                              Text(
                                "${age}",
                                style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(220, 255, 255, 255)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "age+",
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                    ),
                                    Expanded(child: SizedBox()),
                                    FloatingActionButton(
                                      heroTag: 'age-',
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromARGB(35, 255, 255, 255),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(220, 255, 255, 255)),
                            ),
                            Text(
                              "${weight}",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(220, 255, 255, 255)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  FloatingActionButton(
                                    heroTag: 'weight+',
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                  Expanded(child: SizedBox()),
                                  FloatingActionButton(
                                    heroTag: 'weight-',
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: Icon(Icons.remove),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(12)),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (age < 20) {
                        if (weight / pow(height / 100, 2) < 18.5) {
                          range = "Thinness";
                        } else if (weight / pow(height / 100, 2) < 25) {
                          range = "Normal";
                        } else {
                          range = "Overweight";
                        }
                      }
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return result(
                        age: age,
                        gender: isMale,
                        results: weight / pow(height / 100, 2),
                        range: range,
                      );
                    }));
                  },
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(fontSize: 25, color: Colors.white70),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
