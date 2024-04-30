import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class result extends StatelessWidget {
  final int age;
  final double results;
  final bool gender;
  final String range;

  const result(
      {super.key,
      required this.age,
      required this.results,
      required this.gender,
      required this.range});

  @override
  Widget build(BuildContext context) {
    String data = results < 18.5
        ? "Thinness"
        : results < 25
            ? "Normal"
            : "Overweight";
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 3, 31),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container()),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(35, 255, 255, 255)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 15, 8, 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Gender : ",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "${gender ? "Male" : "Female"} ",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Age : ",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "${age} ",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  "Result : ",
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "${results.round()} ",
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: SleekCircularSlider(
                initialValue: results,
                min: 0,
                max: 50,
                innerWidget: (value) {
                  return Center(
                      child: Text(
                    "${data}",
                    style: TextStyle(color: Colors.white70, fontSize: 22),
                  ));
                },
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
