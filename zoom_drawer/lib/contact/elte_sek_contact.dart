import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteSekContact extends StatelessWidget {
  const ElteSekContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text('ELTE SEK Kapcsolat'),
        leading: MenuWidget(),
      ),
    );
  }
}
