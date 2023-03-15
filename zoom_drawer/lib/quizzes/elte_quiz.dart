import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteQuiz extends StatelessWidget {
  const ElteQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('ELTE Kvíz'),
        leading: MenuWidget(),
      ),
    );
  }
}
