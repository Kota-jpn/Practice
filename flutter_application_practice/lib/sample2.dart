import 'package:flutter/material.dart';
import 'package:flutter_application_practice/sample3.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_practice/task_list.dart';

final taskListProvider =
    StateNotifierProvider<TaskList, List<String>>((ref) => TaskList());

class MySample2 extends ConsumerStatefulWidget {
  @override
  _MySample2State createState() => _MySample2State();
}

class _MySample2State extends ConsumerState<MySample2> {
  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final tasks = prefs.getStringList('tasks') ?? [];
    ref.read(taskListProvider.notifier).state = tasks;
  }

  Future<void> _removeTask(int index) async {
    final prefs = await SharedPreferences.getInstance();
    final tasks = prefs.getStringList('tasks') ?? [];
    tasks.removeAt(index);
    prefs.setStringList('tasks', tasks);
    ref.read(taskListProvider.notifier).state.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 195, 133),
        title: const Text('Hello world '),
        centerTitle: true,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(PhosphorIcons.trash),
              const SizedBox(
                width: 8,
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => MySample3(),
                  );
                },
                icon: const Icon(PhosphorIcons.pencil_simple_line),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 248, 240, 228),
        padding: const EdgeInsets.all(24),
        child: Consumer(
          builder: (BuildContext context, WidgetRef ref, Widget? child) {
            final tasks = ref.watch(taskListProvider);
            return ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  child: ListTile(
                    leading: const Icon(PhosphorIcons.square),
                    title: Center(child: Text(tasks[index])),
                    trailing: IconButton(
                      icon: const Icon(PhosphorIcons.x),
                      onPressed: () {
                        if (index >= 0 && index < tasks.length) {
                          setState(() {
                            _removeTask(index);
                          });
                        } else {
                          print('Error');
                        }
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => MySample3(),
          );
        },
        backgroundColor: Colors.deepOrange,
        child: const Icon(PhosphorIcons.plus),
      ),
    );
  }
}
