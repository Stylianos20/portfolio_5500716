import 'package:flutter/material.dart';
import 'Pages/faehigkeiten_page.dart';
import 'Pages/lebenslauf_page.dart';
import 'Pages/uebermich_page.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,  // Zentrieren der Buttons
          children: <Widget>[
            _buildNavItem(context, 'Über mich', Icons.person, AboutPage()),
            const SizedBox(width: 150),  // Abstand zwischen den Buttons
            _buildNavItem(context, 'Fähigkeiten', Icons.mail, SkillsPage()),
            const SizedBox(width: 150),  // Abstand zwischen den Buttons
            _buildNavItem(context, 'Lebenslauf', Icons.description, ResumePage()),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String title, IconData icon, Widget destination) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
