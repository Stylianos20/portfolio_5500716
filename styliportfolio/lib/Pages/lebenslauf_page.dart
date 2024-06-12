import 'package:flutter/material.dart';
import '../nav_bar.dart';

class ResumePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lebenslauf'),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const NavBar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Lebenslauf',
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Stylianos Papadimitriou',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.grey, thickness: 1),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Angestrebte Abschlüsse',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              _buildEducationItem(
                                'Theodor-Heuss-Schule, Offenbach am Main',
                                'Berufliches Gymnasium, Wirtschaft und Verwaltung',
                                '07/2019 - 07/2022',
                              ),
                              _buildEducationItem(
                                'Geschwister-Scholl-Schule, Offenbach am Main',
                                'Integrierte Gesamtschule',
                                '02/2016 - 07/2019',
                              ),
                              _buildEducationItem(
                                'Friedrich-Ebert-Schule, Frankfurt am Main',
                                'Integrierte Gesamtschule',
                                '04/2013 - 01/2016',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Abschlüsse',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              _buildEducationItem(
                                'Abitur (Hochschulreife)',

                                '07/2022',
                              ),
                              _buildEducationItem(
                                'Realschulabschluss',

                                '07/2019',
                              ),
                              _buildEducationItem(
                                'Hauptschulabschluss',

                                '07/2018',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Kenntnisse',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              _buildSkillItem(
                                Icons.language,
                                'Sprachen',
                                'Griechisch (Muttersprache), Deutsch (sehr gute Kenntnisse), Englisch (C1), Spanisch (Schulkenntnisse)',
                              ),
                              const SizedBox(height: 10),
                              _buildSkillItem(
                                Icons.computer,
                                'EDV/IT-Kenntnisse',
                                'Word, PowerPoint, Excel (sehr gute Kenntnisse)',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEducationItem(String title, String subtitle, [String? period]) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 16),
          ),
          if (period != null) ...[
            const SizedBox(height: 5),
            Text(
              period,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSkillItem(IconData icon, String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            size: 24,
            color: Colors.blue,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  content,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
