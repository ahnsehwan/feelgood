import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0, // Remove shadow
          backgroundColor: Colors.white, // Background color
          centerTitle: false, // Title alignment
          iconTheme: IconThemeData(color: Colors.black), // Icon color
          title: Text(
            "Rental Plan",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: "Hour"),
              Tab(text: "Day"),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1 Content
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Start Time",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 113, 16, 173),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(labelText: "hour"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "End Time",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 113, 16, 173),
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(labelText: "hour"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Tab 2 Content
                  Center(
                    child: Icon(Icons.account_box, size: 100),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Discounts",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ListTile(
                    title: Text("Voucher code"),
                    subtitle: Text("Not available"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.east),
                    ),
                  ),
                  ListTile(
                    title: Text("Points redemption"),
                    subtitle: Text("Not available"),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.east),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text("Point +150"),
                ],
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Go to payment'),
            ),
          ],
        ),
      ),
    );
  }
}
