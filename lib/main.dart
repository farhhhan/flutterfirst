import 'package:appbar2/screens/privacy.dart';
import 'package:appbar2/screens/profile.dart';
import 'package:appbar2/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'screens/login.dart';
import 'screens/dashboard.dart';
import 'screens/home.dart';
import 'screens/settings.dart';
import 'screens/chat.dart';

const SAVE_KEY = 'userlogin';

void main(List<String> args) {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? val = 'one';
  var indx = 0;
  List Screen = [
    Home(),
    Chatsc(),
    dashbord(),
    Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'Farhan',
                    style: TextStyle(fontSize: 20),
                  ),
                  accountEmail: Text('abc@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/MISSI.jpg'),
                  ),
                ),
                ListTile(
                  title: Text(
                    'profile',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(Icons.person),
                  iconColor: Colors.black,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                ),
                ListTile(
                  title: Text(
                    'privacy',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(Icons.lock),
                  iconColor: Colors.black,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => privacy()));
                  },
                ),
                ListTile(
                  title: Text(
                    'share',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(Icons.share),
                  iconColor: Colors.black,
                  onTap: () {},
                ),
                ListTile(
                  title: Text(
                    'Setting',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(Icons.settings),
                  iconColor: Colors.black,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                ),
                ListTile(
                  title: Text(
                    'Logout',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Icon(Icons.logout),
                  iconColor: Colors.black,
                  onTap: () {
                    Logoutp(context);
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            //title
            title: Text('My app'),
            centerTitle: true,
            //Bg

            backgroundColor: Colors.transparent,
            //leading

            //button actions
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.pink],
                      begin: Alignment.bottomRight,
                      end: Alignment.bottomLeft)),
            ),
            elevation: 10,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "home",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: "chat",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: "dashboard",
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "setting",
                  backgroundColor: Colors.blue),
            ],
            currentIndex: indx,
            onTap: (int index) {
              setState(() {
                indx = index;
              });
            },
          ),
          body: Screen.elementAt(indx)),
    );
  }

  void Logoutp(BuildContext context) {
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
