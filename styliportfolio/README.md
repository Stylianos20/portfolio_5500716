# Meine Flutter-App

Diese Flutter-App enthält eine einfache Navigationsleiste (NavBar), die drei Hauptseiten der App anzeigt: Über mich, Fähigkeiten und Lebenslauf.

## Navigation

Die Navigation innerhalb der App wird durch die `NavBar`-Klasse gesteuert. Diese Navigationsleiste befindet sich am oberen Rand der App und enthält drei `TextButton`-Widgets, die mithilfe der `Navigator.push`-Methode zur jeweiligen Seite weiterleiten.

## Verwendete Widgets

### `NavBar`-Widget

Die `NavBar`-Klasse ist eine StatelessWidget, die die Navigationsleiste der App darstellt. Sie enthält drei `TextButton`-Widgets, die mit einem Icon und einem Text beschriftet sind. Durch Klicken auf einen Button wird der Benutzer zur entsprechenden Seite navigiert.

### `_buildNavItem`-Widget

Die Methode `_buildNavItem` wird verwendet, um jeden einzelnen Navigationsbutton zu erstellen. Jeder Button besteht aus einem Icon und einem Text, die horizontal in einer Row angeordnet sind.

### Verwendete Seiten

Die Seiten, zu denen die Navigation führt, sind:

#### Über mich (`AboutPage`)

Die Seite Über mich enthält Informationen über den Benutzer, seine persönlichen Informationen, Interessen und Hintergrund.

#### Fähigkeiten (`SkillsPage`)

Die Seite Fähigkeiten listet die technischen Fähigkeiten des Benutzers auf, die er in der App präsentieren möchte.

#### Lebenslauf (`ResumePage`)

Die Lebenslauf-Seite zeigt den Lebenslauf des Benutzers in strukturierter Form an, einschließlich seiner Ausbildung, Berufserfahrung und anderen relevanten Informationen.

## Setup

Um die App auszuführen, müssen Sie sicherstellen, dass Sie Flutter auf Ihrem Entwicklungscomputer installiert haben. Anschließend können Sie die App mit `flutter run` ausführen.

### Voraussetzungen

- Flutter SDK installiert (siehe [Flutter Installationsanleitung](https://flutter.dev/docs/get-started/install))
- Ein Emulator oder ein angeschlossenes Gerät


