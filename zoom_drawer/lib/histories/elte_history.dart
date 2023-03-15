import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteHistory extends StatelessWidget {
  const ElteHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ELTE Történelme'),
        leading: MenuWidget(),
      ),
    );
  }
}
