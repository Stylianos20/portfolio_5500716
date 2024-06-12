import 'package:flutter/material.dart';
import '../nav_bar.dart';

class SkillsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fähigkeiten'),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Startet die Row linksbündig
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              const Text(
                'Startseite',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 16), // Abstand zwischen Icon und Text
            ],
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const NavBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: <Widget>[
                  _buildSkillCategory(
                    title: 'Programmiersprachen',
                    skills: const [
                      Skill('Java', Icons.code),
                      Skill('HTML', Icons.language),
                      Skill('Dart', Icons.android),
                      Skill('CSS', Icons.palette),
                    ],
                  ),
                  _buildSkillCategory(
                    title: 'Entwicklungsumgebungen',
                    skills: const [
                      Skill('VSCode', Icons.code),
                      Skill('Eclipse', Icons.brightness_3),
                      Skill('Android Studio', Icons.android),
                    ],
                  ),
                  _buildSkillCategory(
                    title: 'Sonstige Kenntnisse',
                    skills: const [
                      Skill('PowerPoint', Icons.slideshow),
                      Skill('Word', Icons.description),
                      Skill('Excel', Icons.table_chart),
                      Skill('Access', Icons.storage),
                      Skill('SQL', Icons.storage),
                      Skill('Flutter', Icons.mobile_friendly),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCategory({
    required String title,
    required List<Skill> skills,
  }) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 20,
          children: skills.map((skill) {
            return Column(
              children: <Widget>[
                Icon(skill.icon, size: 50),
                const SizedBox(height: 10),
                Text(skill.name),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}

class Skill {
  final String name;
  final IconData icon;

  const Skill(this.name, this.icon);
}
