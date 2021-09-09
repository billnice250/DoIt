import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkBoxCallBack;

  TaskTile({this.title, this.isChecked, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: KDefaultTextStyle.copyWith(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          checkColor: kMainAppColor,
          activeColor: kAccentAppColor,
          value: isChecked,
          onChanged: checkBoxCallBack,
        ));
  }
}
/*
(bool value) {
setState(() {
isChecked = value;
});
},

*/
