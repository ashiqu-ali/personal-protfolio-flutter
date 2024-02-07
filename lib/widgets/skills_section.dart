import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constants/colors.dart';
import '../constants/size.dart';
import '../styles/textStyles.dart';
import 'skills_desktop.dart';
import 'skills_mobile.dart';

class SkillSection extends StatefulWidget {
  const SkillSection({super.key});

  @override
  State<SkillSection> createState() => _SkillSectionState();
}

class _SkillSectionState extends State<SkillSection> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
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
      );
    });
  }
}
