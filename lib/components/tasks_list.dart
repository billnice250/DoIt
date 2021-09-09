import 'package:do_it/components/task_tile.dart';
import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(
          title: 'Something that needs to be done',
        ),
        TaskTile(
          title: 'Wash my clothes',
        ),
        TaskTile(
          title: 'Buy milk',
        ),
      ],
    );
  }
}
