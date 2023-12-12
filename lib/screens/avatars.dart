import 'package:flutter/material.dart';

class avatars extends StatefulWidget {
  const avatars({super.key});

  @override
  State<avatars> createState() => _avatarsState();
}

class _avatarsState extends State<avatars> {
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
        title: Text('Avatar'),
        backgroundColor: Colors.teal[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset('images/avatar.png'),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text('Say more with Avatar now on this App'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Create your Avatar'),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.teal[700])),
            ),
            Divider()
          ],
        ),
      ),
    ));
  }
}
