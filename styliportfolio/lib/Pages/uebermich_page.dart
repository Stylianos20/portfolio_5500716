import 'package:flutter/material.dart';
import '../nav_bar.dart'; // Stelle sicher, dass der Pfad korrekt ist

class AboutPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text('Über mich'),
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
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            NavBar(),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Stylianos Papadimitriou',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mein Name ist Stylianos Papadimitriou und ich studiere Wirtschaftsinformatik an der Technischen Hochschule Mittelhessen in Friedberg. Ich habe Erfahrung in der Programmierung mit Java, HTML, CSS, VBA und Flutter/Dart. Neben meinem Studium verbringe ich gerne Zeit im Fitnessstudio und beschäftige mich mit verschiedenen Sportarten. Auch das Programmieren zählt zu meinen Hobbys.\n\nMein Ziel ist es, mein Studium erfolgreich abzuschließen und später in einem Unternehmen zu arbeiten, das sich mit Programmierung und Wirtschaft beschäftigt. Ich bin motiviert, meine Fähigkeiten weiterzuentwickeln und mein Wissen in der Praxis anzuwenden.',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
