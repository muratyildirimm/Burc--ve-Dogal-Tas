import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_destiny/burc_secimi.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Image.asset('assets/images/genie.png'),
      ),
      backgroundColor: Colors.deepPurple,
      nextScreen: const MyApp(),
      splashIconSize: 150,
      duration: 4000,
      splashTransition: SplashTransition.slideTransition,
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String click = 'a';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (click == 'kadın'
          ? Colors.pink
          : (click == 'erkek')
              ? Colors.lightBlue
              : Colors.white),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        click = 'erkek';
                      });
                    },
                    child: CircleAvatar(
                      radius: 127.0,
                      backgroundImage: AssetImage('assets/images/erkek.png'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        click = 'kadın';
                      });
                    },
                    child: CircleAvatar(
                      radius: 150.0,
                      backgroundImage: AssetImage('assets/images/kadin.png'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RaisedButton(
                  child: Text('SONRAKİ SAYFA',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 19.0)),
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  color: Colors.black45,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tarih()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
