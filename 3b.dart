import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Responsive UI with MediaQuery'),
        ),
        body: Builder(
          builder: (context) {
            var screenWidth = MediaQuery.of(context).size.width;

            if (screenWidth < 600) {
              // Layout for smaller screens (portrait mode)
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(16.0),
                    child: Text('Left Content'),
                  ),
                  Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(16.0),
                    child: Text('Right Content'),
                  ),
                ],
              );
            } else {
              // Layout for larger screens (landscape mode)
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(16.0),
                      child: Text('Left Content'),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(16.0),
                      child: Text('Right Content'),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    ),
  );
}
