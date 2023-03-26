import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_practice/sample2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySample3 extends ConsumerWidget {
  final TextEditingController _taskController = TextEditingController();

  Future<void> _saveTask(BuildContext context, WidgetRef ref) async {
    if (_taskController.text.isNotEmpty) {
      ref.read(taskListProvider.notifier).add(_taskController.text);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> tasks = prefs.getStringList('tasks') ?? [];
      tasks.add(_taskController.text);
      await prefs.setStringList('tasks', tasks);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _taskController,
                decoration: const InputDecoration(
                  hintText: 'Title',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 240, 102, 3)),
                ),
                onPressed: () => _saveTask(context, ref),
                child: const Text('Add Task'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
