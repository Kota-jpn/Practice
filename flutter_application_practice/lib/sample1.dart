import 'package:flutter/material.dart';

class MySample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 253, 231),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Todo List',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Add button action
            },
            icon: Icon(Icons.add, color: Colors.black),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 253, 231),
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hello World'),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text('2'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
