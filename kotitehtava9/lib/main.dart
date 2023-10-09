import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    "Kategoria 1",
    "Kategoria 2",
    "Kategoria 3",
    "Kategoria 4"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategoriat'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryScreen(categories[index]),
                ),
              );
            },
            child: Text(categories[index]),
          );
        },
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final String categoryName;

  CategoryScreen(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategoria'),
      ),
      body: Center(
        child: Text(categoryName),
      ),
    );
  }
}
