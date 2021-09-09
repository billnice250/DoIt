import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TaskTile extends StatefulWidget {
  final String title;
  final Function onTap;

  const TaskTile({
    this.title,
    this.onTap,
  });

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallBack (bool value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      title: Text(
        widget.title,
        style: KDefaultTextStyle.copyWith(
          decoration: isChecked? TextDecoration.lineThrough:TextDecoration.none
        ),
      ),
      trailing: TaskCheckBox(toggleCheckBoxState: checkBoxCallBack,checkBoxState: isChecked,),
    );
  }
}


class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;

  TaskCheckBox({this.checkBoxState, this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: kMainAppColor,
      activeColor: kAccentAppColor,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
