import 'package:flutter/material.dart';
import 'package:my_destiny/iliski.dart';
import 'package:my_destiny/dogaltas.dart';
import 'package:my_destiny/burc_secimi.dart';
import 'package:my_destiny/gunluk_burc_yorumu.dart';

class anasayfa extends StatefulWidget {
  final String? burc;

  const anasayfa({Key? key, this.burc}) : super(key: key);

  @override
  State<anasayfa> createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text('HANGİ TAVSİYEYİ İSTİYORSUNUZ?'),
        ),
        backgroundColor: Colors.indigo,
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dogaltas()));
                      });
                    },
                    child: CircleAvatar(
                      radius: 90.0,
                      backgroundImage:
                          AssetImage('assets/images/dogal_tas.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    gunluk_burc_yorumu(burc: widget.burc)));
                      });
                    },
                    child: CircleAvatar(
                      radius: 90.0,
                      backgroundImage: AssetImage('assets/images/burc.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 190,
                    height: 25,
                    child: Text('DOĞAL TAŞ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    width: 190,
                    height: 25,
                    child: Text('GÜNLÜK BURÇ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 33.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 20.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    iliski(burc: widget.burc)));
                      });
                    },
                    child: CircleAvatar(
                      radius: 90.0,
                      backgroundImage: AssetImage('assets/images/iliski.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    width: 190,
                    height: 25,
                    child: Text('İLİŞKİ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
