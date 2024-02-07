import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/colors.dart';
import 'package:personal_protfolio/constants/size.dart';
import 'package:personal_protfolio/widgets/drawer_mobile.dart';
import 'package:personal_protfolio/widgets/header_desktop.dart';
import 'package:personal_protfolio/widgets/header_mobile.dart';
import 'package:personal_protfolio/widgets/main_desktop.dart';
import 'package:personal_protfolio/widgets/main_mobile.dart';
import 'package:personal_protfolio/widgets/skills_desktop.dart';
import 'package:personal_protfolio/widgets/skills_mobile.dart';

import '../styles/textStyles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: ScaffoldKey,
          backgroundColor: CustomColor.ScaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //Navbar
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    ScaffoldKey.currentState!.openEndDrawer();
                  },
                ),

              //Main
              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

              //skills
              Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    children: [
                      //title
                      Text('What Can I do?', style: MobileHeading),

                      const SizedBox(height: xlarge),
                      if (constraints.maxWidth >= kMinDesktopWidth)
                        const DesktopSkills()
                      else
                        const MobileSkills(),
                    ],
                  )),
              //projects
              Container(
                height: 500,
                width: double.maxFinite,
                // color: Colors.blueGrey,
              ),
              //contact
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              //footer
              Container(
                height: 500,
                width: double.maxFinite,
                // color: Colors.blueGrey,
              )
            ],
          ));
    });
  }
}
