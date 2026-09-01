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
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Profile'),
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Student Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 16),

                // Professional profile card (removed hardcoded name)
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 36,
                          backgroundColor: Colors.indigo,
                          child: Icon(Icons.person, color: Colors.white, size: 36),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'MUHAMMED RISHAL URK23CS1124',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Computer Science and Engineering',
                          style: TextStyle(color: Colors.black87),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.home),
                            Icon(Icons.person),
                            Icon(Icons.settings),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                Card(
                  elevation: 0,
                  child: ListTile(
                    leading: const Icon(Icons.book),
                    title: const Text('Flutter'),
                    subtitle: const Text('Mobile Application Development'),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                ),

                const SizedBox(height: 10),
                const Text('Subjects', style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),

                // Subjects list (scrollable by outer ListView)
                Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.book),
                      title: Text('Flutter'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cloud),
                      title: Text('Cloud Computing'),
                    ),
                    ListTile(
                      leading: Icon(Icons.code),
                      title: Text('Programming'),
                    ),
                    ListTile(
                      leading: Icon(Icons.storage),
                      title: Text('Data Structures'),
                    ),
                    ListTile(
                      leading: Icon(Icons.science),
                      title: Text('DBMS'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
