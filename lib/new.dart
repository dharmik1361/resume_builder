import 'package:flutter/material.dart';

class carrier extends StatelessWidget {
  const carrier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Carrier objective")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),
                      topRight: Radius.circular(10),
                      ),
                  ),
                )
              ),
        ],
      ),
    );
  }
}
