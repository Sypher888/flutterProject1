import 'package:flutter/material.dart';
import 'package:project_mobile/textfields.dart';

class ScaffoldProp extends StatefulWidget {
  const ScaffoldProp({super.key});

  @override
  State<ScaffoldProp> createState() => _ScaffoldPropState();
}

class _ScaffoldPropState extends State<ScaffoldProp> {
  String checked = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text(
          'Army Application Review',
          style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: TextProps(),
      ),
    );
  }
}
