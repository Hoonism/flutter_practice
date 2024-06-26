import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pages/home_page.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.yellow, // 주요 색상
          secondary: Colors.orange, // 보조 색상
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow, //use your hex code here
        ),
      ),
    );
  }
}
