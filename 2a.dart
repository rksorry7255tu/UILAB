import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 118, 30),
        body: Center(
            child: Text(
          'Hello World',
          style: TextStyle(
            color: Color.fromARGB(255, 11, 7, 255),
            fontSize: 60,
          ),
        )),
      ),
    ),
  );
}


import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 233, 118, 30),
        body: Center(
          child: Text('Hello World',style: TextStyle(
            color: Color.fromARGB(255, 11, 7, 255),
            fontSize: 60,
          ),)
          ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          //color: Colors.purple,   
 // Uncomment to set background color
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3), 

          ),
          child: const Text(
            "Hello! i am inside a container!",
            style: TextStyle(fontSize: 20),  

          ),
        ),
      ),
    ),
  );
}

