import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteSekQuiz extends StatelessWidget {
  const ElteSekQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('ELTE SEK kvíz'),
        leading: MenuWidget(),
      ),
    );
  }
}
