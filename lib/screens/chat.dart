import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatsc extends StatefulWidget {
  const Chatsc({super.key});

  @override
  State<Chatsc> createState() => _ChatscState();
}

class _ChatscState extends State<Chatsc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Chat',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54),
            ),
          ),
          Divider(),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'Leo messi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 6 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/MISSI.jpg'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '3+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'cristanio',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 30 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/profcr.png'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '18+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'sunny leon',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 1 hours ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/sunnydp.png'),
                ),
                trailing: Icon(Icons.message),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'farhan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/fardp.jpg'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '1+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'neymar jr',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 10 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/njrdp.png'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '2+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'actorvijay',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 32 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/vijaydp.png'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '2+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'suriya',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 45 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/suryadp.png'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '5+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'sachin',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 15 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/sachin.png'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '3+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'Leo messi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 6 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/MISSI.jpg'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '3+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'Leo messi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 6 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/MISSI.jpg'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '3+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'Leo messi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 6 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/MISSI.jpg'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '3+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text(
                  'Leo messi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Active 6 minutes ago',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/MISSI.jpg'),
                ),
                trailing: CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: Colors.green,
                  child: Text(
                    '3+',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class chatSet extends StatefulWidget {
  const chatSet({super.key});

  @override
  State<chatSet> createState() => _catSetState();
}

class _catSetState extends State<chatSet> {
  bool? val1 = false;
  bool? val2 = false;
  bool? val3 = false;
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
          title: Text('Chat Theme'),
          backgroundColor: Colors.teal[700],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Display',
                    style: TextStyle(color: Colors.black54),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text(
                      'Wallpaper',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  Divider(),
                  Text(
                    'Chat settings',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, top: 20, bottom: 10),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            setState(() {
                              if (val1 == true) {
                                val1 = false;
                              } else {
                                val1 = true;
                              }
                            });
                          },
                          title: Text(
                            'Enter is send',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('Enter key sent your message'),
                          trailing: CupertinoSwitch(
                            value: val1!,
                            onChanged: (value) {
                              setState(() {
                                val1 = value;
                              });
                            },
                            activeColor: Colors.teal[700],
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            setState(() {
                              if (val2 == true) {
                                val2 = false;
                              } else {
                                val2 = true;
                              }
                            });
                          },
                          title: Text(
                            'Media Visibility',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text(
                              'Show newly downloaded video in your Device gellary'),
                          trailing: CupertinoSwitch(
                            value: val2!,
                            onChanged: (value) {
                              setState(() {
                                val2 = value;
                              });
                            },
                            activeColor: Colors.teal[700],
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Font Size',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('Medium'),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Text(
                    'Archive chat',
                    style: TextStyle(color: Colors.black54),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, top: 20, bottom: 10),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'keep Chat in achive',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          subtitle: Text('Enter key sent your message'),
                          trailing: CupertinoSwitch(
                            value: val3!,
                            onChanged: (value) {
                              setState(() {
                                val3 = value;
                              });
                            },
                            activeColor: Colors.teal[700],
                          ),
                          onTap: () {
                            setState(() {
                              if (val3 == true) {
                                val3 = false;
                              } else {
                                val3 = true;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.backup),
                    title: Text(
                      'Chat BAckup',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.move_up),
                    title: Text(
                      'Transfter Chat',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text(
                      'Chat History',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
