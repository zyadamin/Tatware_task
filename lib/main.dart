import 'package:flutter/material.dart';
import 'package:tatwaretask/core/classes/experts.dart';
import 'package:tatwaretask/core/classes/massage.dart';
import 'package:tatwaretask/features/pages/chat_page.dart';
import 'package:tatwaretask/features/pages/start_page.dart';

import 'features/pages/getStart_page.dart';
import 'features/pages/home_page.dart';
import 'features/widgets/expert_widget.dart';
import 'features/widgets/massage_widget.dart';
import 'features/widgets/menu_item_widget.dart';
import 'features/widgets/online_expert.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: startPage(),
    );
  }
}
