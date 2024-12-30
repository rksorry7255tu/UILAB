import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Technologies'), // Updated title
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Even spacing
          crossAxisAlignment: CrossAxisAlignment.center, // Center alignment
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red, // Red container
              child: const Center(
                child: Text('React.JS'), // Text inside red container
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green, // Green container
              child: const Center(
                child: Text('Flutter'), // Text inside green container
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.orange, // Orange container
              child: const Center(
                child: Text('MySQL'), // Text inside orange container
              ),
            ),
          ],
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
          title: const Text('Technologies'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container( 

              width: 200,
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text('React.JS'),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.green,
              child: const Center(
                child: Text('Flutter'),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.orange,
              child: const Center(
                child: Text('MySQL'),
              ),
            ),
          ],
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
          title: const Text('Technologies'),
        ),
        body: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: const Center(
                child: Text('React.JS', style: TextStyle(color: Colors.white)),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                width: 180,
                height: 180,
                color: Colors.green,
                child: const Center(
                  child: Text('Flutter', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.orange,
                child: const Center(
                  child: Text('MySQL', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
