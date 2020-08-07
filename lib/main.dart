import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "Accont Kontak"),
              buildCard(Icons.headset, "Music Player")
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData icon, String kalimat) {
    return Card(
      elevation: 8,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              child: Icon(
                icon,
                color: Colors.green,
              )),
          Text(kalimat)
        ],
      ),
    );
  }
}
