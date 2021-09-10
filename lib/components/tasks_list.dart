import 'package:do_it/components/task_tile.dart';
import 'package:do_it/models/task.dart';
import 'package:flutter/material.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState(tasks);
}

class _TasksListState extends State<TasksList> {
  final List<Task> tasks;
  _TasksListState(this.tasks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallBack: (bool value) {
            setState(() {
              tasks[index].isDone = value;
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
