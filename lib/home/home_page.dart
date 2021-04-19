import 'package:flutter/material.dart';
import 'package:nlw_5/home/widgets/appbar/appbar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
    );
  }
}
