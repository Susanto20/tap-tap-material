import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tap_material/halaman_dua.dart';

void main() {
  runApp(const HalamanSatu());
}

class HalamanSatu extends StatefulWidget {
  const HalamanSatu({Key? key}) : super(key: key);

  @override
  _HalamanSatuState createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff79B4B7),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                child: Center(
                    child: Text(
                  "Halo",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 19),
                child: Center(
                    child: Text(
                  "Selamat Datang di Aplikasi Tap Tap Material",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                )),
              ),
              Container(
                width: 300,
                height: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100.0)),
                padding: EdgeInsets.all(40),
                child: Image(
                  image: AssetImage(
                    "assets/images/Logo hitam.png",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Center(
                    child: Text(
                  "Tap Tap Material",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanDua();
                  }));
                },
                child: Text(
                  "Lewati",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
