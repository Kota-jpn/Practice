import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class TaskList extends StateNotifier<List<String>> {
  TaskList() : super([]);

  void add(String task) {
    state = [...state, task];
  }
}
