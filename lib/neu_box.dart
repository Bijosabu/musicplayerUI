// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: child,
        ),
        decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade800,
                  offset: const Offset(-5, -5),
                  blurRadius: 15,
                  spreadRadius: 1),
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(5, 5),
                  blurRadius: 15,
                  spreadRadius: 1),
            ]),
      ),
    );
  }
}
