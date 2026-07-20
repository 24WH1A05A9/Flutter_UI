import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',

      // Register Named Routes
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
      },
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen 24WH1A05A9"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Go to Second Screen",
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            // ---------- WITHOUT NAMED ROUTES ----------
            /*
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(),
              ),
            );
            */
            // ---------- WITH NAMED ROUTES ----------
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}
// ---------------- SECOND SCREEN ----------------
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen 24WH1A05A9"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Back",
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}