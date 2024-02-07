import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/colors.dart';
import 'package:personal_protfolio/constants/size.dart';
import 'package:personal_protfolio/constants/skill_items.dart';

class DesktopSkills extends StatelessWidget {
  const DesktopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //platforms and skills
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 450,
              ),
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [
                  for (int i = 0; i < platformItems.length; i++)
                    Container(
                      width: 200,
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
            ),
            const SizedBox(width: 50),

            //skills
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                ),
                child: Wrap(
                  spacing: xsmall,
                  runSpacing: xsmall,
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
              ),
            )
          ],
        )
      ],
    );
  }
}
