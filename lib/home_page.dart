// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'neu_box.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  // first row with back button and menu
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'P L A Y L I S T',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: NeuBox(
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // coverart

                  NeuBox(
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/time.jpeg')),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ECHO',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Landscape',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                              size: 32,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // time and icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '0:00',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.shuffle,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.repeat,
                        color: Colors.white,
                      ),
                      Text(
                        '4:22',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // progressindicator

                  NeuBox(
                    child: LinearPercentIndicator(
                      lineHeight: 10,
                      percent: 0.7,
                      progressColor: Colors.green,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //  buttons
                  SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Expanded(
                          child: NeuBox(
                            child: Icon(
                              Icons.skip_previous,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: NeuBox(
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: NeuBox(
                            child: Icon(
                              Icons.skip_next,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
