import 'package:flutter/material.dart';
import 'package:personal_protfolio/styles/style.dart';
import 'package:personal_protfolio/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/navItems.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: kHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: () {}),
          const Spacer(),
          for (String navText in navTiles)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                navText,
                style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.whitePrimary),
              ),
            )
        ],
      ),
    );
  }
}
