import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../constants/textStyles.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi, \nI'm Ashiqu Ali\nFlutter Developer",
                style: heading1,
              ),
              const SizedBox(
                height: small,
              ),
              SizedBox(
                width: 245,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Get in touch",
                        style: TextStyle(color: CustomColor.whitePrimary)),
                    style: ElevatedButton.styleFrom(
                      primary: CustomColor.yellowPrimary,
                    )),
              )
            ],
          ),
          Image.network(
            "assets/image.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
