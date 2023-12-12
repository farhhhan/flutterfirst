import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 20),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/MISSI.jpg'),
                  maxRadius: 90,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Name',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      subtitle: Text(
                        'Farhan',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      onTap: () {},
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                      iconColor: Colors.green,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 70, right: 10, bottom: 15),
                      child: Text(
                        'this is not your username or pin.this name will be visible to your contact',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text(
                        'Mail',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      subtitle: Text(
                        'abc@gmail.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      onTap: () {},
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                      iconColor: Colors.green,
                    ),
                    Divider(),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'Phone',
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      subtitle: Text(
                        '+91 9876543210',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      onTap: () {},
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                      iconColor: Colors.green,
                    ),
                    Divider(),
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
