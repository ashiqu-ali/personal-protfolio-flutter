import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/colors.dart';
import 'package:personal_protfolio/constants/size.dart';
import 'package:personal_protfolio/constants/skill_items.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //platforms
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            for (int i = 0; i < platformItems.length; i++)
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: CustomColor.bgLight2,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: medium, vertical: xsmall),
                  leading: Image.asset(
                    platformItems[i]["img"],
                    width: 26,
                  ),
                  title: Text(platformItems[i]["title"]),
                ),
              )
          ],
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
    );
  }
}
