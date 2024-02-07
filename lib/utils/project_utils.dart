class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String sourceCode;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.sourceCode,
  });
}

//work Project
List<ProjectUtils> workProject = [];

//hobby project
List<ProjectUtils> myProject = [
  ProjectUtils(
      image: 'assets/projects/1.jpg',
      title: 'Cataract detection',
      subtitle:
          'This is a cataract detection program using cnn model with ADAM optimizer algorithm',
      sourceCode: 'https://github.com/ashiqu-ali/cataract-detection-using-cnn'),
  ProjectUtils(
      image: 'assets/projects/4.jpg',
      title: 'Money Manager',
      subtitle:
          'Money Manager is a simple app that helps you to keep track of your daily expenses. It is built using Flutter and Flutter hive.',
      sourceCode: 'https://github.com/ashiqu-ali/money-manager-app'),
  ProjectUtils(
      image: 'assets/projects/5.jpg',
      title: 'News App',
      subtitle:
          'This is a simple news app which is built using Flutter and API integrated for news.',
      sourceCode: 'https://github.com/ashiqu-ali/newsapp'),
  ProjectUtils(
      image: 'assets/projects/2.jpg',
      title: 'BMI Calculator',
      subtitle:
          'BMI Calculator is a simple app that calculates your BMI and tells your condition.',
      sourceCode: 'https://github.com/ashiqu-ali/BMI-calculator-Flutter'),
  ProjectUtils(
      image: 'assets/projects/3.jpg',
      title: '  ToDo App',
      subtitle:
          'This is a simple todo app that helps you to keep track of your daily tasks. It is built using Flutter and Firebase.',
      sourceCode: 'https://github.com/ashiqu-ali/Todo-app'),
];
