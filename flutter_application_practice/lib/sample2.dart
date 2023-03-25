import 'package:flutter/material.dart';
import 'package:flutter_application_practice/sample3.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class MySample2 extends StatefulWidget {
  @override
  _MySample2State createState() => _MySample2State();
}

class _MySample2State extends State<MySample2> {
  List<String> tasks = [
    'Task 1',
    'Task 2',
    // ... 他のタスク
  ];

  List<bool> taskCompletionStatus = [false, false];

  @override
  void initState() {
    super.initState();
    taskCompletionStatus = List.generate(tasks.length, (index) => false);
  }

  void _toggleTaskCompletion(int index) {
    setState(() {
      taskCompletionStatus[index] = !taskCompletionStatus[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 195, 133),
        title: Text('Hello world '),
        centerTitle: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(PhosphorIcons.trash),
              SizedBox(
                width: 8,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MySample3()),
                  );
                },
                icon: Icon(PhosphorIcons.pencil_simple_line),
              ),
              SizedBox(width: 16),
            ],
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 248, 240, 228),
        padding: EdgeInsets.all(24),
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 4),
              child: ListTile(
                leading: Checkbox(
                  value: taskCompletionStatus[index],
                  onChanged: (bool? newValue) {
                    _toggleTaskCompletion(index);
                  },
                ),
                title: Center(child: Text(tasks[index])),
                trailing: IconButton(
                  icon: Icon(PhosphorIcons.x),
                  onPressed: () {
                    setState(() {
                      tasks.removeAt(index);
                      taskCompletionStatus.removeAt(index);
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MySample3()),
          );
        },
        backgroundColor: Colors.deepOrange,
        child: Icon(PhosphorIcons.plus),
      ),
    );
  }
}
