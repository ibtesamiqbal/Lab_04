import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  // Define a list of items to be displayed
  final List<String> items = List<String>.generate(100, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable ListView'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.amberAccent[100],
            child: ListTile(
              title: Text(
                items[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Subtitle for ${items[index]}',
                style: TextStyle(color: Colors.black54),
              ),
              leading: Icon(
                Icons.star_border,
                color: Colors.deepPurple,
                size: 30,
              ),
              trailing: Icon(
                Icons.arrow_right_alt,
                color: Colors.deepPurple,
                size: 30,
              ),
              onTap: () {
                // Add any action when an item is tapped
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped on ${items[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
