import 'dart:math';

import 'package:flutter/material.dart';
import '../nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _textAnimation;

  // Variable für das Spiel "Schere, Stein, Papier"
  String? userChoice;
  String? computerChoice;
  String? result;

  int _eastereggCount = 0;
  bool _showGame = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000), // Dauer der Animation pro Buchstabe
    );

    _textAnimation = IntTween(begin: 0, end: 'Willkommen zu meinem Portfolio!'.length).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Animation beim Start abspielen
    _controller.forward();

    // Animation bei jedem Loop neu starten
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    // Initialisierung für das Spiel "Schere, Stein, Papier"
    userChoice = '';
    computerChoice = '';
    result = '';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void playGame(String choice) {
    // Zufällige Auswahl für den Computer
    List<String> choices = ['Schere', 'Stein', 'Papier'];
    int randomIndex = Random().nextInt(choices.length);
    String computerChoice = choices[randomIndex];

    // Bestimmen des Ergebnisses
    String result = '';
    if (choice == computerChoice) {
      result = 'Unentschieden';
    } else if ((choice == 'Schere' && computerChoice == 'Papier') ||
        (choice == 'Stein' && computerChoice == 'Schere') ||
        (choice == 'Papier' && computerChoice == 'Stein')) {
      result = 'Gewonnen';
    } else {
      result = 'Verloren';
    }

    // Aktualisieren der Zustände
    setState(() {
      userChoice = choice;
      this.computerChoice = computerChoice;
      this.result = result;
    });
  }

  void _handleEasterEggClick() {
    setState(() {
      _eastereggCount++;
      if (_eastereggCount >= 3) {
        // Zeige das Spiel "Schere, Stein, Papier" an
        _showGame = true;
        _eastereggCount = 0; // Zurücksetzen für zukünftige Nutzung
      }
    });
  }

  void _hideGame() {
    setState(() {
      _showGame = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stylianos Papadimitriou'),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
      body: Container(
        color: Colors.grey[200], // Hellgraue Hintergrundfarbe
        child: Column(
          children: <Widget>[
            const NavBar(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: <Widget>[
                    const SizedBox(height: 20),
                    AnimatedBuilder(
                      animation: _textAnimation,
                      builder: (context, child) {
                        String textToShow = 'Willkommen zu meinem Portfolio!'
                            .substring(0, _textAnimation.value);

                        return Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.blue[100], // Hellblaue Hintergrundfarbe
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text(
                            textToShow,
                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Mein Name ist Stylianos, und dieses Portfolio wurde im Rahmen des Fachs "WK_1210 Entwicklung grafischer Bedienoberflächen (SS24)" erstellt. Hier finden Sie eine Sammlung meiner Arbeiten, Ausbildungen und Interessen. Durch die Navigation oben können Sie mehr über mich, meinen Lebenslauf, meine Fähigkeiten und die Projekte erfahren, an denen ich gearbeitet habe. ',
                      style: TextStyle(fontSize: 18, color: Colors.black87), // Hellere Textfarbe
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _handleEasterEggClick,
                      child: const Text('Klick mich nicht 3 Mal'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0), backgroundColor: Colors.blue[100], // Ändere die Hintergrundfarbe
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (_showGame)
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.blue[100], // Hellblaue Hintergrundfarbe
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            const Text(
                              'Schere, Stein, Papier',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            if (userChoice != '')
                              Text(
                                'Du wählst: $userChoice',
                                style: const TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            if (computerChoice != '')
                              Text(
                                'Computer wählt: $computerChoice',
                                style: const TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                            if (result != '')
                              Text(
                                'Ergebnis: $result',
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    playGame('Schere');
                                  },
                                  child: const Text('Schere'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    playGame('Stein');
                                  },
                                  child: const Text('Stein'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    playGame('Papier');
                                  },
                                  child: const Text('Papier'),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: _hideGame,
                              child: const Text('Spiel verbergen'),
                            ),
                          ],
                        ),
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
