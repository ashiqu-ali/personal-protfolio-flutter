import 'package:flutter/material.dart';
import 'package:personal_protfolio/utils/project_utils.dart';
import 'package:personal_protfolio/widgets/project_card.dart';
import 'package:personal_protfolio/widgets/project_section.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';
import '../styles/textStyles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.ScaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Navbar
            if (constraints.maxWidth >= kMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState!.openEndDrawer();
                },
              ),

            // Main
            if (constraints.maxWidth >= kMinDesktopWidth)
              const MainDesktop()
            else
              const MainMobile(),

            // Skills
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
              color: CustomColor.bgLight1,
              child: Column(
                children: [
                  // Title
                  Text('What Can I do?', style: MobileHeading),

                  const SizedBox(height: xlarge),
                  if (constraints.maxWidth >= kMinDesktopWidth)
                    const DesktopSkills()
                  else
                    const MobileSkills(),
                ],
              ),
            ),

            // Projects
            ProjectSection(),

            // Contact
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),

            // Footer
            Container(
              height: 500,
              width: double.maxFinite,
              // color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
