import 'package:do_it/components/rounded_button.dart';
import 'package:do_it/components/tasks_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TasksScreen extends StatefulWidget {
  static String id;

  const TasksScreen({Key key});

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  String newTaskName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kAccentAppColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RawMaterialButton(
                    elevation: 0.0,
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.list,
                        color: kAccentAppColor,
                        size: 40.0,
                      ),
                    ),
                    fillColor: kMainTextColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 20.0, 5.0, 0.0),
                    child: Column(
                      children: [
                        Text(
                          'DoIt',
                          style: TextStyle(
                              color: kMainTextColor,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                        Text('12 tasks',
                            style: TextStyle(
                              color: kMainTextColor,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                  color: kMainAppColor,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: TasksList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kAccentAppColor,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,

              builder: buildBottomSheet,
              backgroundColor: Colors.transparent
          );
        },
        child: Icon(
          Icons.add,
          size: 40.0,
          color: kMainTextColor,
        ),
      ),
    );
  }

  Widget buildBottomSheet(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
          color: kMainAppColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                      color: kAccentAppColor,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ),
              TextField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  setState(() {
                    newTaskName = value;
                  });
                },
                decoration:
                    kFormTextFieldDecoration.copyWith(hintText: 'Enter a Task'),
              ),
              MyRoundedButton(
                  title: 'Add', color: kAccentAppColor, onPressed: () {

              })
            ],
          ),
        ),
      ),
    );
  }
}
