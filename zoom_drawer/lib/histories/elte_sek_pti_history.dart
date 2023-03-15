import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteSekPtiHistory extends StatelessWidget {
  const ElteSekPtiHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('ELTE SEK PTI Történelme'),
        leading: MenuWidget(),
      ),
    );
  }
}
