import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _incrementCounterMin() {
    setState(() {
      _counter--;
    });
  }
  void _incrementCounterDiv() {
    setState(() {
      _counter = _counter ~/ 2;
    });
  }
  void _incrementCounterMax() {
    setState(() {
      _counter = _counter * 2;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            if (_counter > 10)
               const Text(
                "Weiter soo!!!",
              ),

            if (_counter < -5)
               const Text(
                  "Bitte nicht weiter runter gehen"
              ),
            if (_counter > 100)
              const Text(
                  "Willst du keine Pause machen"
              ),
            if (_counter > 10000)
              const Text(
                  "gib auf"
              ),


          ],
        ),
      ),

      floatingActionButton: Row(
       mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,

children: [
    FloatingActionButton.large(
        onPressed: _incrementCounterMin,
        tooltip: 'Minus',
        child: const Icon(Icons.remove),
      ),

  Expanded(child: Container()),

  FloatingActionButton.large(
    onPressed: _incrementCounterDiv,
    tooltip: 'Dividieren',
    child: const Icon(Icons.call_made_rounded),
  ),

  Expanded(child: Container()),

  FloatingActionButton.large(
    onPressed: _incrementCounterMax,
    tooltip: 'Multiplizieren',
    child: const Icon(Icons.dangerous_outlined),
  ),

  Expanded(child: Container()),

  FloatingActionButton.large(
    onPressed: _incrementCounter,
    tooltip: 'Plus',
    child: const Icon(Icons.add),
  ),

    ],// This trailing comma makes auto-formatting nicer for build methods.
    ),

    );


  }
}
