import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zoom_drawer/contact/elte_sek_contact.dart';
import 'package:zoom_drawer/histories/elte_sek_pti_history.dart';
import 'package:zoom_drawer/menu_item.dart';
import 'package:zoom_drawer/menu_page.dart';
import 'package:zoom_drawer/news/elte_sek_facebook.dart';
import 'package:zoom_drawer/news/elte_sek_website.dart';
import 'package:zoom_drawer/quizzes/elte_quiz.dart';
import 'package:zoom_drawer/quizzes/elte_sek_quiz.dart';
import 'package:zoom_drawer/quizzes/elte_sek_pti_quiz.dart';
import 'package:zoom_drawer/histories/elte_history.dart';
import 'package:zoom_drawer/histories/elte_sek_history.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MenuItemModel currentItem = MenuItems.quiz1;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      angle: 0.0,
      menuScreen: Builder(builder: (context) {
        return MenuPage(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(
              () {
                currentItem = item;
                ZoomDrawer.of(context)!.close();
              },
            );
          },
        );
      }),
      mainScreen: getScreen(),
    );
  }

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.quiz1:
        return const ElteQuiz();

      case MenuItems.quiz2:
        return const ElteSekQuiz();

      case MenuItems.quiz3:
        return const ElteSekPtiQuiz();

      case MenuItems.history1:
        return const ElteHistory();

      case MenuItems.history2:
        return const ElteSekHistory();

      case MenuItems.history3:
        return const ElteSekPtiHistory();

      case MenuItems.facebook:
        return const ElteSekFacebook();

      case MenuItems.website:
        return const ElteSekWebsite();

      case MenuItems.contact:
        return const ElteSekContact();
      default:
        return const ElteSekQuiz();
    }
  }
}
