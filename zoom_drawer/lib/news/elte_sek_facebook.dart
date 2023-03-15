import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteSekFacebook extends StatelessWidget {
  const ElteSekFacebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('ELTE SEK Facebook'),
        leading: MenuWidget(),
      ),
    );
  }
}
