import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[700],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('Help'),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.question_mark),
            title: Text(
              'Help Center',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.contact_page),
            title: Text(
              'Contact us',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('Qustion ? Need Help'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.edit_document),
            title: Text(
              'terms and privacy policy',
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info),
            title: Text(
              'App info',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    ));
  }
}
