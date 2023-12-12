import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  bool? val = false;
  bool? val1 = false;
  bool? val2 = false;
  bool? val3 = false;
  bool? val4 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
          backgroundColor: Colors.teal[700],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        if (val == true) {
                          val = false;
                        } else {
                          val = true;
                        }
                      });
                    },
                    title: Text('Conversation tones'),
                    subtitle:
                        Text('play sound for incoming and outgoing message'),
                    trailing: CupertinoSwitch(
                        value: val!,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        activeColor: Colors.teal[700]),
                  ),
                ),
                Divider(),
                ListTile(
                  subtitle: Text('Messages'),
                ),
                ListTile(
                  title: Text('Notification tone'),
                  subtitle: Text('Defualt ringtone(notification_000)'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Vibrate'),
                  subtitle: Text('Defualt'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Light'),
                  subtitle: Text('white'),
                  onTap: () {},
                ),
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
                  title: Text('Use High priority notifications'),
                  subtitle: Text(
                      'show previews  of notification at the top of screen'),
                  trailing: CupertinoSwitch(
                      value: val1!,
                      onChanged: (value) {
                        setState(() {
                          val1 = value;
                        });
                      },
                      activeColor: Colors.teal[700]),
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
                  title: Text('Reaction Notification'),
                  subtitle: Text(
                      'show notification for reaction to message you send'),
                  trailing: CupertinoSwitch(
                      value: val2!,
                      onChanged: (value) {
                        setState(() {
                          val2 = value;
                        });
                      },
                      activeColor: Colors.teal[700]),
                ),
                Divider(),
                ListTile(
                  subtitle: Text('Groups'),
                ),
                ListTile(
                  title: Text('Notification tone'),
                  subtitle: Text('Defualt ringtone(notification_000)'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Vibrate'),
                  subtitle: Text('Defualt'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Light'),
                  subtitle: Text('white'),
                  onTap: () {},
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      if (val3 == true) {
                        val3 = false;
                      } else {
                        val3 = true;
                      }
                    });
                  },
                  title: Text('Use High priority notifications'),
                  subtitle: Text(
                      'show previews  of notification at the top of screen'),
                  trailing: CupertinoSwitch(
                      value: val3!,
                      onChanged: (value) {
                        setState(() {
                          val3 = value;
                        });
                      },
                      activeColor: Colors.teal[700]),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      if (val4 == true) {
                        val4 = false;
                      } else {
                        val4 = true;
                      }
                    });
                  },
                  title: Text('Reaction Notification'),
                  subtitle: Text(
                      'show notification for reaction to message you send'),
                  trailing: CupertinoSwitch(
                      value: val4!,
                      onChanged: (value) {
                        setState(() {
                          val4 = value;
                        });
                      },
                      activeColor: Colors.teal[700]),
                ),
                Divider(),
                ListTile(
                  subtitle: Text('Calls'),
                ),
                ListTile(
                  title: Text('Ringtone'),
                  subtitle: Text('Defualt ringtone(notification_000)'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Vibrate'),
                  subtitle: Text('Defualt'),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
