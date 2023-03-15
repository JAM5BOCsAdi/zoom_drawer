import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteSekHistory extends StatelessWidget {
  const ElteSekHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('ELTE SEK Történelme'),
        leading: MenuWidget(),
      ),
    );
  }
}
