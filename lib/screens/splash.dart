import 'package:appbar2/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appbar2/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLogin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 10,
              color: Colors.indigo,
              semanticsLabel: 'LOADING...',
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'LOADING...',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
        // child: CircleAvatar(
        //   backgroundImage: AssetImage('images/splash.png'),
        //   radius: 120,
        // ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> Lag() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Myapp()));
  }

  Future<void> Lagtrue() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  Future<void> checkLogin() async {
    final _shared = await SharedPreferences.getInstance();
    final _logoin = _shared.getBool(SAVE_KEY);
    if (_logoin == null || _logoin == false) {
      Lag();
    } else {
      Lagtrue();
    }
  }
}
