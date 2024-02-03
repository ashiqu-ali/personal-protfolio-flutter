import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/colors.dart';
import 'package:personal_protfolio/constants/size.dart';
import 'package:personal_protfolio/widgets/drawer_mobile.dart';
import 'package:personal_protfolio/widgets/header_desktop.dart';
import 'package:personal_protfolio/widgets/header_mobile.dart';
import 'package:personal_protfolio/widgets/main_desktop.dart';
import 'package:personal_protfolio/widgets/main_mobile.dart';

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
                MainMobile(),

              //skills
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
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
