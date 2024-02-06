import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/colors.dart';
import 'package:personal_protfolio/constants/size.dart';
import 'package:personal_protfolio/constants/skill_items.dart';
import 'package:personal_protfolio/styles/textStyles.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //title
          Text('What Can I do?', style: MobileHeading),

          const SizedBox(height: xlarge),

          //platforms
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    vertical: xsmall, horizontal: medium),
                leading: Image.asset(platformItems[i]["img"]),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          const SizedBox(height: xlarge),

          //skills
          Wrap(
            spacing: xsmall,
            runSpacing: xsmall,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight2,
                  padding: const EdgeInsets.symmetric(
                      vertical: xsmall, horizontal: small),
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"], width: 26),
                )
            ],
          ),
        ],
      ),
    );
  }
}
