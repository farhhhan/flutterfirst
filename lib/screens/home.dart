import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var likeclr = Colors.black;
  var dlikeclr = Colors.black;
  var crlike = Colors.black;
  var crdlike = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Leo messi',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    subtitle: Text(
                      '24 minutes ago',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/MISSI.jpg'),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                    iconColor: Colors.black,
                  ),
                  ListTile(
                    title: Text('my first goal in inter miami'),
                  ),
                  Image.asset('images/inter.png'),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, bottom: 10, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {
                            setState(() {
                              if (likeclr == Colors.black) {
                                likeclr = Colors.pink;
                              } else {
                                likeclr = Colors.black;
                              }
                            });
                          },
                          color: likeclr,
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down),
                          onPressed: () {
                            setState(() {
                              if (dlikeclr == Colors.black) {
                                dlikeclr = Colors.pink;
                              } else {
                                dlikeclr = Colors.black;
                              }
                            });
                          },
                          color: dlikeclr,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              elevation: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Cristano',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    subtitle: Text(
                      ' 1 hours ago',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/profcr.png'),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                    iconColor: Colors.black,
                  ),
                  ListTile(
                    title: Text(
                        'al nasar will be get in this champions leage cup'),
                  ),
                  Image.asset('images/cristano.png'),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, bottom: 10, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {
                            setState(() {
                              if (crlike == Colors.black) {
                                crlike = Colors.pink;
                              } else {
                                crlike = Colors.black;
                              }
                            });
                          },
                          color: crlike,
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down),
                          onPressed: () {
                            setState(() {
                              if (crdlike == Colors.black) {
                                crdlike = Colors.pink;
                              } else {
                                crdlike = Colors.black;
                              }
                            });
                          },
                          color: crdlike,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              elevation: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Neymar jr',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    subtitle: Text(
                      '1 days ago',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/njrdp.png'),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                    iconColor: Colors.black,
                  ),
                  ListTile(
                    title: Text('al hilal not a bad club in Soudi leauge'),
                  ),
                  Image.asset('images/alhilal.png'),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, bottom: 10, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {
                            setState(() {
                              if (likeclr == Colors.black) {
                                likeclr = Colors.pink;
                              } else {
                                likeclr = Colors.black;
                              }
                            });
                          },
                          color: likeclr,
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down),
                          onPressed: () {
                            setState(() {
                              if (dlikeclr == Colors.black) {
                                dlikeclr = Colors.pink;
                              } else {
                                dlikeclr = Colors.black;
                              }
                            });
                          },
                          color: dlikeclr,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              elevation: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Sunny Leon',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.black),
                    ),
                    subtitle: Text(
                      '3 days ago',
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/sunnydp.png'),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      onPressed: () {},
                    ),
                    iconColor: Colors.black,
                  ),
                  ListTile(
                    title: Text('The road is my office !!! 🖤❤️'),
                  ),
                  Image.asset('images/sunnypost.png'),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, bottom: 10, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(Icons.thumb_up),
                          onPressed: () {
                            setState(() {
                              if (crlike == Colors.black) {
                                crlike = Colors.pink;
                              } else {
                                crlike = Colors.black;
                              }
                            });
                          },
                          color: crlike,
                        ),
                        IconButton(
                          icon: Icon(Icons.thumb_down),
                          onPressed: () {
                            setState(() {
                              if (crdlike == Colors.black) {
                                crdlike = Colors.pink;
                              } else {
                                crdlike = Colors.black;
                              }
                            });
                          },
                          color: crdlike,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              elevation: 20,
            ),
          ),
        ],
      ),
    );
  }
}
