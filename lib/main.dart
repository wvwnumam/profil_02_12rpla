import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

void main() => runApp(Profil());

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('PROFIL',
              style: TextStyle(
                color: Colors.amber[300],
              )),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profil.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 90,
                color: Colors.grey,
              ),
              Text('NAMA',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              SizedBox(height: 10),
              Text('AHMAD NUHISYA ADILLAUMAM',
                  style: TextStyle(
                      color: Colors.amber[300],
                      letterSpacing: 2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('NIS',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              SizedBox(height: 10),
              Text('18.0007671',
                  style: TextStyle(
                      color: Colors.amber[300],
                      letterSpacing: 2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('KELAS',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              SizedBox(height: 10),
              Text('XII RPL-A',
                  style: TextStyle(
                      color: Colors.amber[300],
                      letterSpacing: 2,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('TEMUKAN SAYA DI',
                  style: TextStyle(
                    color: Colors.grey,
                  )),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text('wvwn@pm.me',
                      style: TextStyle(
                          color: Colors.amber[300],
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.code,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text('github.com/wvwnumam',
                      style: TextStyle(
                          color: Colors.amber[300],
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.brush,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                  Text('dribbble.com/wvwnumam',
                      style: TextStyle(
                          color: Colors.amber[300],
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 80),
              Center(
                child: Text('HANYA TAMBAHAN',
                    style: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              SizedBox(height: 10),
              Center(
                child: SmoothStarRating(
                    allowHalfRating: false,
                    onRated: (v) {},
                    starCount: 5,
                    rating: rating,
                    size: 40.0,
                    isReadOnly: false,
                    color: Colors.amber[300],
                    borderColor: Colors.amber[300],
                    spacing: 0.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
