import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkBoxCallback(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a text', style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough: null,
      ),),
      trailing: TaskCheckBox(isChecked, checkBoxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
final bool checkBoxState;
final Function toggleCheckboxState;

TaskCheckBox(this.checkBoxState, this.toggleCheckboxState);


  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxState(),
    );
  }
}
