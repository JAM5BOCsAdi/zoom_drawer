import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteSekPtiQuiz extends StatelessWidget {
  const ElteSekPtiQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('ELTE SEK PTI kvíz'),
        leading: MenuWidget(),
      ),
    );
  }
}
