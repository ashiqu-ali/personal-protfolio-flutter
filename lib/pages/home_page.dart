import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/colors.dart';
import 'package:personal_protfolio/constants/navItems.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.ScaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //Main
            Container(
              height: 60.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.transparent, CustomColor.bgLight1]),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  const Text(
                    "AQ",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: CustomColor.yellowSecondary),
                  ),
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
            ),
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
  }
}
