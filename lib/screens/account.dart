
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _privacyState();
}

class _privacyState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Text('Account'),
          backgroundColor: Colors.teal[700],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 10),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.security),
                title: Text(
                  'Security notifications',
                  style: TextStyle(color: Colors.black),
                ),
                iconColor: Colors.black54,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.verified),
                title: Text(
                  'Two-step verification',
                  style: TextStyle(color: Colors.black),
                ),
                iconColor: Colors.black54,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.question_mark_rounded),
                title: Text(
                  'third party app shareing',
                  style: TextStyle(color: Colors.black),
                ),
                iconColor: Colors.black54,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.move_up),
                title: Text(
                  'Change Number',
                  style: TextStyle(color: Colors.black),
                ),
                iconColor: Colors.black54,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.edit_document),
                title: Text(
                  'Requst Account info',
                  style: TextStyle(color: Colors.black),
                ),
                iconColor: Colors.black54,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
