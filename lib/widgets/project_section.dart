import 'package:flutter/material.dart';
import 'package:personal_protfolio/constants/size.dart';

import '../styles/textStyles.dart';
import '../utils/project_utils.dart';
import 'project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          // Work project title

          // Work project cards

          // My project title
          Text('My Project', style: MobileHeading),
          const SizedBox(height: medium),

          // My project cards
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for (var project in myProject) ProjectCard(project: project),
            ],
          )
        ],
      ),
    );
  }
}
