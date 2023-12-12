import 'package:flutter/material.dart';

class dashbord extends StatefulWidget {
  const dashbord({super.key});

  @override
  State<dashbord> createState() => _NewsState();
}

class _NewsState extends State<dashbord> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Dashbord',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'images/MISSI.jpg',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Reialnce Retail in talks golbal investors to raise 500 billions',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 40),
                      child: Text(
                        'Reliance said As a policy , we do not comment on media speculation and rumours',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/cristano.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Reualt Nissan Automotive India ,mark 15 yrs of operations at TN plant',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '29 min ago',
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.headphones)),
                    )
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/njrdp.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Reualt Nissan Automotive India ,mark 15 yrs of operations at TN plant',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '29 min ago',
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.headphones)),
                    )
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/MISSI.jpg',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Reualt Nissan Automotive India ,mark 15 yrs of operations at TN plant',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '29 min ago',
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.headphones)),
                    )
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/njrdp.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Reualt Nissan Automotive India ,mark 15 yrs of operations at TN plant',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '29 min ago',
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.headphones)),
                    )
                  ],
                ),
                elevation: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/cristano.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Reualt Nissan Automotive India ,mark 15 yrs of operations at TN plant',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        '29 min ago',
                        style: TextStyle(fontSize: 15),
                      ),
                      trailing: IconButton(
                          onPressed: () {}, icon: Icon(Icons.headphones)),
                    )
                  ],
                ),
                elevation: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
