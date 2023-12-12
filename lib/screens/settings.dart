import 'package:appbar2/screens/avatars.dart';
import 'package:appbar2/main.dart';
import 'package:appbar2/screens/chat.dart';
import 'package:appbar2/screens/help.dart';
import 'package:appbar2/screens/account.dart';
import 'package:appbar2/screens/noti.dart';
import 'package:appbar2/screens/privacy.dart';
import 'package:appbar2/screens/profile.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
        body: Setting(),
      ),
    );
  }
}

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Settings',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54),
              ),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/MISSI.jpg'),
                maxRadius: 30,
              ),
              title: Text('Farhan'),
              subtitle: Text('full time busy'),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
              iconColor: Colors.green,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.key_sharp),
              iconColor: Colors.black,
              title: Text(
                'Account',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text('Security notification,change number'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              iconColor: Colors.black,
              title: Text(
                'Privacy',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text('Block contact,disappearing messages'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => privacy()));
              },
            ),
            ListTile(
              leading: Icon(Icons.mood),
              iconColor: Colors.black,
              title: Text(
                'Avatar',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text('Create,edit,profile,photo'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => avatars()));
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              iconColor: Colors.black,
              title: Text(
                'Chat',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text('theme,wallpapers,chat history'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => chatSet()));
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              iconColor: Colors.black,
              title: Text(
                'Notification',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text('Message,group&call tones'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => notification()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              iconColor: Colors.black,
              title: Text(
                'Help',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text('help center,contact us,privacy policy'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => help()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person_2),
              iconColor: Colors.black,
              title: Text(
                'Invite a friend',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              iconColor: Colors.black,
              title: Text(
                'Logout',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              onTap: () {
                LogoutSe(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void LogoutSe(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Message'),
            content: Text('You want logout'),
            actions: [
              TextButton(
                  onPressed: () {
                    logouting(ctx);
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: Text('No'))
            ],
          );
        });
  }

  void logouting(BuildContext ctx1) async {
    Navigator.pushAndRemoveUntil(
        ctx1, MaterialPageRoute(builder: (ctx) => Myapp()), (Route) => false);
    final _shared = await SharedPreferences.getInstance();
    _shared.setBool(SAVE_KEY, false);
  }
}
