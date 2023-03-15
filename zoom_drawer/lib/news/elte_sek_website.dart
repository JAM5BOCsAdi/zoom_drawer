import 'package:flutter/material.dart';
import 'package:zoom_drawer/menu_widget.dart';

class ElteSekWebsite extends StatelessWidget {
  const ElteSekWebsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('ELTE SEK weboldal'),
        leading: MenuWidget(),
      ),
    );
  }
}
