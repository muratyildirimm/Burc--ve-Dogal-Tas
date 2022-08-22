import 'package:flutter/material.dart';
import 'package:my_destiny/anasayfa.dart';
import 'package:my_destiny/dogaltas.dart';

class gerekli extends StatefulWidget {
  @override
  State<gerekli> createState() => _gerekliState();
}

class _gerekliState extends State<gerekli> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tarih(),
    );
  }
}

class tarih extends StatefulWidget {
  @override
  State<tarih> createState() => _tarihState();
}

class _tarihState extends State<tarih> {
  String burc = 'a';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text('BURÇ SEÇİMİ'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'akrep';

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/akrep.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'aslan';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => anasayfa(burc: burc),
                          ));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/aslan.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'balik';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => anasayfa(burc: burc),
                          ));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/balik.png'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 116,
                height: 23,
                child: Text('AKREP',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.end),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('ASLAN',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.right),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('BALIK',
                    style: TextStyle(fontSize: 20.0), textAlign: TextAlign.end),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'basak';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/basak.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'boga';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/boga.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'ikizler';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/ikizler.png'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 116,
                height: 23,
                child: Text('BAŞAK',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.end),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('BOĞA',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.right),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('İKİZLER',
                    style: TextStyle(fontSize: 20.0), textAlign: TextAlign.end),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'koc';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/koc.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'kova';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/kova.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'oglak';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/oglak.png'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 116,
                height: 23,
                child: Text('KOÇ',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.end),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('KOVA',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.right),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('OĞLAK',
                    style: TextStyle(fontSize: 20.0), textAlign: TextAlign.end),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'terazi';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/terazi.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'yay';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/yay.png'),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      burc = 'yengec';
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => anasayfa(burc: burc)));
                    });
                  },
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/yengec.png'),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 116,
                height: 23,
                child: Text('TERAZİ',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.end),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('YAY',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.right),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                width: 131,
                height: 23,
                child: Text('YENGEÇ',
                    style: TextStyle(fontSize: 20.0), textAlign: TextAlign.end),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
