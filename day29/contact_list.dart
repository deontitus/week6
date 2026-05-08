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
      title: 'Contact List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // Contact List
  final List<Map<String, String>> contacts = const [
     {
      "name": "Deon",
      "phone": "9876543210",
      "category": "Friends"
    },
    {
      "name": "Rahul",
      "phone": "9876501234",
      "category": "Work"
    },
    {
      "name": "Arjun",
      "phone": "9123456780",
      "category": "Family"
    },
    {
      "name": "Adithya",
      "phone": "9988776655",
      "category": "College"
    },
    {
      "name": "Albin",
      "phone": "9090909090",
      "category": "Friends"
    },
  ];
  // Category Grid
  final List<String> categories = const [
    "Friends",
    "Family",
    "Work",
    "College",
    "Emergency",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),

        child: Column(
          children: [

            // Category Grid
            SizedBox(
              height: 180,

              child: GridView.builder(
                itemCount: categories.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),

                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Center(
                      child: Text(
                        categories[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
            ),
            ),
            ),
            );
            },
            ),
            ),

            const SizedBox(height: 15),

            // Contact List
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,

                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),

                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(
                          contacts[index]["name"]![0],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),

                      title: Text(
                        contacts[index]["name"]!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: Text(
                        "${contacts[index]["phone"]}\n${contacts[index]["category"]}",
                      ),

                      isThreeLine: true,

                      trailing: const Icon(
                        Icons.phone,
                        color: Colors.green,
  ),
  ),
  );
  },
  ),
  ),
  ],
  ),
  ),
   );
  }
}