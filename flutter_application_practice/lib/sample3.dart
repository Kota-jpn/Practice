import 'package:flutter/material.dart';

class MySample3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New List'),
        backgroundColor: Color.fromARGB(255, 236, 195, 133),
        actions: [
          Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      print('hi');
                    },
                    child: Text(
                      'Finish',
                      style: TextStyle(color: Colors.red),
                    ),
                  )))
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 248, 240, 228),
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Tilte',
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 240, 102, 3)),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Finish'),
            ),
          ],
        ),
      ),
    );
  }
}
