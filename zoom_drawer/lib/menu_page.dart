import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:zoom_drawer/menu_item.dart';

class MenuItems {
  static const quiz1 = MenuItemModel(title: 'ELTE', icon: Icons.payment);
  static const quiz2 = MenuItemModel(title: 'ELTE SEK', icon: Icons.payment);
  static const quiz3 = MenuItemModel(title: 'ELTE SEK PTI', icon: Icons.payment);

  static const history1 = MenuItemModel(title: 'ELTE ', icon: Icons.payment);
  static const history2 = MenuItemModel(title: 'ELTE SEK ', icon: Icons.payment);
  static const history3 = MenuItemModel(title: 'ELTE SEK PTI ', icon: Icons.payment);

  static const website = MenuItemModel(title: 'ELTE SEK Weboldal', icon: Icons.payment);
  static const facebook = MenuItemModel(title: 'ELTE SEK Facebook', icon: Icons.payment);

  static const contact = MenuItemModel(title: 'Kapcsolat', icon: Icons.payment);

  static const all = <MenuItemModel>[
    quiz1,
    quiz2,
    quiz3,
    history1,
    history2,
    history3,
    website,
    facebook,
    contact,
  ];
}

class MenuPage extends StatelessWidget {
  final MenuItemModel currentItem;
  final ValueChanged<MenuItemModel> onSelectedItem;

  const MenuPage({Key? key, required this.currentItem, required this.onSelectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              ExpansionTile(
                title: const Text("Kvízek"),
                leading: const Icon(Icons.payment),
                children: [
                  buildMenuItem(MenuItems.quiz1),
                  buildMenuItem(MenuItems.quiz2),
                  buildMenuItem(MenuItems.quiz3),
                ],
              ),
              ExpansionTile(
                title: const Text("Történetek"),
                leading: const Icon(Icons.payment),
                children: [
                  buildMenuItem(MenuItems.history1),
                  buildMenuItem(MenuItems.history2),
                  buildMenuItem(MenuItems.history3),
                ],
              ),
              ExpansionTile(
                title: const Text("Hírek"),
                leading: const Icon(Icons.payment),
                children: [
                  buildMenuItem(MenuItems.website),
                  buildMenuItem(MenuItems.facebook),
                ],
              ),
              buildMenuItem(MenuItems.contact),

              // ...MenuItems.all.map(buildMenuItem).toList(),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(MenuItemModel item) {
    return ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
        selectedTileColor: Colors.black26,
        selected: currentItem == item,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () => onSelectedItem(item),
      ),
    );
  }
}
