import 'package:flutter/material.dart';

void main() {
  runApp(const StudentApp());
}

class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Information',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
        return Scaffold(
      appBar: AppBar(
        title: Text("Student Information"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "24WH1A05A9_LakshmiVaishnavi",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
            body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),

              Image.asset(
                "assets/student.png",
                height: width * 0.4,
              ),

              SizedBox(height: 20),

              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentDetails(),
                    ),
                  );
                },
                child: const Text('View Student Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Details"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "24WH1A05A9_LakshmiVaishnavi",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
            body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                "assets/student.png",
                height: 180,
              ),

              SizedBox(height: 20),

              Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        "Student Information",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                                            SizedBox(height: 20),

                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Name"),
                        subtitle: Text("Lakshmi Vaishnavi"),
                      ),

                      ListTile(
                        leading: Icon(Icons.badge),
                        title: Text("Roll No"),
                        subtitle: Text("24WH1A05A9"),
                      ),

                      ListTile(
                        leading: Icon(Icons.school),
                        title: Text("Branch"),
                        subtitle: Text("CSE"),
                      ),

                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email"),
                        subtitle: Text("lakshmi@example.com"),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}