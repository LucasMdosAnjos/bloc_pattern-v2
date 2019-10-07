import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'increment-controller.dart';
import 'increment-widget.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        child: IncrementWidget(),
        blocs: [
          Bloc((i)=>IncrementController()),
        ],
      ),
    );
  }
}
