import 'package:flutter/material.dart';
import 'dart:js' as js;

import '../utils/project_utils.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../styles/textStyles.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 250,
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //image
        Image.asset(
          project.image,
          height: 155,
          width: 250,
          fit: BoxFit.cover,
        ),

        //title
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
          child: Text(
            project.title,
            style: myProjectTitle,
          ),
        ),

        //subtitle
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Text(
            project.subtitle,
            style: myProjectSubtitle,
          ),
        ),

        const Spacer(),
        //footer
        Container(
          color: CustomColor.bgLight1,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: xsmall),
          child: Row(
            children: [
              Text(
                "Source Code",
                style: projectSourceCode,
              ),
              const SizedBox(width: small),
              const Spacer(),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [project.sourceCode]);
                },
                child: const Icon(
                  Icons.open_in_new,
                  size: 15,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
