import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_application_practice/sample2.dart';

class MySample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 253, 231),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Todo List',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(
            color: Colors.black.withOpacity(0.1),
            thickness: 1,
            height: 1,
            indent: 16,
            endIndent: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Add button action
            },
            icon: Icon(PhosphorIcons.plus, color: Colors.black),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 253, 231),
        child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MySample2()),
                );
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
