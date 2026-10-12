import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StarScreen(),
    );
  }
}

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("24WH1A05A9_LakshmiVaishnavi"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Stars",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
                Icon(Icons.star, color: Colors.yellow, size: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}