import 'package:flutter/material.dart';
import 'package:resume_builder/work3.dart';

class work2 extends StatelessWidget {
  const work2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Resume Builder",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  "Resume",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Icon(
            Icons.drive_file_move_outlined,
            size: 45,
            color: Colors.black87,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "No Resumes + Create new resume.",
            style: TextStyle(fontSize: 23, color: Colors.black38),
          ),
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => work3(),));
        },
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
