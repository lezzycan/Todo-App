import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final Function(bool?)? toggleState;
  final VoidCallback? longPress;
   const TaskTile({this.isChecked, this.taskTitle, this.toggleState, this.longPress});


  // void checkBoxFunction(newValue) {  being called in toggleState
  //   setState(() {
  //     isChecked = newValue;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPress,
      title: Text(
        taskTitle!,
        style: TextStyle(
          fontSize: 30,
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleState,
      ),
      // TaskCheckBox(
      //     checkState: isChecked,
      //     toggleState: (newValue) {  //anonymous function
      //       setState(() {
      //         isChecked = newValue;
      //       });
      //     }),
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   const TaskCheckBox({
//     this.checkState,
//     this.toggleState,
//     Key? key,
//   }) : super(key: key);
//
//   final bool? checkState;
//   final void Function(bool?)? toggleState;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.deepOrangeAccent,
//       value: checkState,
//       onChanged: toggleState,
//     );
//   }
// }
