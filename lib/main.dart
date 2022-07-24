import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoey/screens/task_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'modal/task.dart';
import 'modal/task_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top])
      .then((_) => runApp(const TodoeyApp()));
}

class TodoeyApp extends StatelessWidget {
  const TodoeyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return   ScreenUtilInit(
     designSize: const Size(Material.defaultSplashRadius, 896),
    minTextAdapt: true,
    splitScreenMode: true,
     builder: (BuildContext context, Widget? child) {
       return ChangeNotifierProvider<TaskProvider>(
         create: (BuildContext context) => TaskProvider(),
         child: const MaterialApp(
             debugShowCheckedModeBanner: false,
             home: TasksScreens(
             ),
         ),
       ); }
 );


  }
}

