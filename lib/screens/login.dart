import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(hintColor: Colors.black, primaryIconTheme: IconThemeData()),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController userinput = new TextEditingController();
  TextEditingController passinput = new TextEditingController();
  String user = '';
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //title
        title: Text('My app'),
        centerTitle: true,
        leading: Icon(Icons.person_2),
        //Bg

        backgroundColor: Colors.transparent,
        //leading

        //button actions
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.pink],
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft)),
        ),
        elevation: 10,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 100),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: TextField(
                  controller: userinput,
                  maxLength: 20,
                  decoration: InputDecoration(
                      labelText: "UserName",
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 0, 27, 49),
                          fontWeight: FontWeight.w800),
                      hintText: "Enter UserName",
                      hintStyle: TextStyle(color: Colors.black),
                      helperText: "Enter UserName Characters",
                      helperStyle:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                      prefixIcon: Icon(
                        Icons.man_3_rounded,
                        color: const Color.fromARGB(255, 0, 54, 98),
                      ),
                      suffixIcon: Icon(
                        Icons.verified_user,
                        color: Color.fromARGB(255, 0, 49, 90),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  keyboardType: TextInputType.name,
                ),
              ),
              Container(
                child: TextField(
                  controller: passinput,
                  maxLength: 8,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.red,
                      labelText: "password",
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 0, 27, 49),
                          fontWeight: FontWeight.w800),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.black),
                      helperText: "Enter password numbers",
                      helperStyle:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                      prefixIcon: Icon(
                        Icons.password,
                        color: const Color.fromARGB(255, 0, 54, 98),
                      ),
                      suffixIcon: Icon(
                        Icons.verified_user,
                        color: Color.fromARGB(255, 0, 49, 90),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll(Colors.white),
                        minimumSize:
                            MaterialStatePropertyAll(Size(150, 50))),
                    onPressed: () {
                      Chekings(context);
                    },
                    child: Text(
                      'Sign',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void Chekings(BuildContext ctx) async {
    user = userinput.text;
    pass = passinput.text;
    if (user == "farhan" && pass == "12345678") {
      final _shared = await SharedPreferences.getInstance();
      await _shared.setBool(SAVE_KEY, true);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyApp()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('username or password is wrong'),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 2),
      ));
    }
  }
}
