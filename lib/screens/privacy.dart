import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class privacy extends StatefulWidget {
  const privacy({super.key});

  @override
  State<privacy> createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  bool? val = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Privacy'),
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
                ListTile(
                  subtitle: Text('who can see my personal info'),
                ),
                ListTile(
                  title: Text('Last seen and online'),
                  subtitle: Text('my contact'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('profile photo'),
                  subtitle: Text('everyone'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('my mail'),
                  subtitle: Text('my contact'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('status'),
                  subtitle: Text('298 contacts excluded'),
                  onTap: () {},
                ),
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
                    title: Text('Read rececipts'),
                    subtitle: Text(
                        'if turned off ,you want send or recive read recipts'),
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
                  subtitle: Text('Disappearing messages'),
                ),
                ListTile(
                  title: Text('Defualt message timer'),
                  subtitle: Text(
                      'start new chat with disapearing messsages set of youtimer'),
                  trailing: Text('off'),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  title: Text('Groups'),
                  subtitle: Text('everyone'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Live Location'),
                  subtitle: Text('None'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Calls'),
                  subtitle: Text('Silence Uknow caller'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Blocked Contacts'),
                  subtitle: Text('12'),
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
