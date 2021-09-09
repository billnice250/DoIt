import 'package:flutter/material.dart';

import '../constants.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final Function onTap;

  const TaskTile({
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: KDefaultTextStyle,
      ),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  _TaskCheckBoxState createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool checkValue = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: kMainAppColor,
      activeColor: kAccentAppColor,
      value: checkValue,
      onChanged: (value) {
        setState(() {
          checkValue = value;
        });
      },
    );
  }
}
