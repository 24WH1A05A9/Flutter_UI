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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row, Column & Stack Layouts"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              // Row Layout
              const Text(
                "Row Layout",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.red,
                    width: 70,
                    height: 70,
                  ),
                  Container(
                    color: Colors.green,
                    width: 70,
                    height: 70,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 70,
                    height: 70,
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Column Layout
              const Text(
                "Column Layout",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  Container(
                    color: Colors.red,
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    color: Colors.green,
                    width: 70,
                    height: 70,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    color: Colors.blue,
                    width: 70,
                    height: 70,
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Stack Layout
              const Text(
                "Stack Layout",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 180,
                      height: 180,
                    ),
                    Container(
                      color: Colors.green,
                      width: 130,
                      height: 130,
                    ),
                    Container(
                      color: Colors.blue,
                      width: 80,
                      height: 80,
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
}