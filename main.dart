
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsHome(),
    );
  }
}

class NewsHome extends StatelessWidget {
  final List<Map<String, String>> newsList = [
    {"title": "Nifty closes above 22,500", "desc": "Markets rebound after volatile week."},
    {"title": "EV sector sees record inflows", "desc": "Investors bullish on clean energy."},
    {"title": "Real estate booming in Pune", "desc": "New projects attract buyers and FII interest."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SmartStockLens News'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          final news = newsList[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(news["title"] ?? "", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(news["desc"] ?? ""),
            ),
          );
        },
      ),
    );
  }
}
