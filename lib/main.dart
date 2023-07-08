// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'work.dart';

void main() => runApp(resume());

class resume extends StatefulWidget {
  const resume({super.key});

  @override
  State<resume> createState() => _resumeState();
}

class _resumeState extends State<resume> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: work2()
    );
  }
}
