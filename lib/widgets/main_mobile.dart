import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../styles/textStyles.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: xlarge),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //avatar image
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    CustomColor.ScaffoldBg.withOpacity(0.6),
                    CustomColor.ScaffoldBg.withOpacity(0.6)
                  ],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                "assets/image.png",
                width: screenWidth,
              ),
            ),
            SizedBox(height: large),
            Text(
              "Hi, \nI'm Ashiqu Ali\nFlutter Developer",
              style: MobileHeading,
            ),
            const SizedBox(
              height: small,
            ),
            SizedBox(
              width: 195,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in touch",
                      style: TextStyle(color: CustomColor.whitePrimary)),
                  style: ElevatedButton.styleFrom(
                    primary: CustomColor.yellowPrimary,
                  )),
            )
          ]),
    );
  }
}
