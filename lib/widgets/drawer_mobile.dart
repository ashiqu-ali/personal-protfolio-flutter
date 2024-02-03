import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/navItems.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: CustomColor.ScaffoldBg,
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ),
            ),
            for (int i = 0; i < navTiles.length; i++)
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
                titleTextStyle: const TextStyle(
                    color: CustomColor.whitePrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                onTap: () {},
                leading: Icon(navIcons[i]),
                title: Text(navTiles[i]),
              )
          ],
        ));
  }
}
