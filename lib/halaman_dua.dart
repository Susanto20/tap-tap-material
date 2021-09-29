import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tap_material/halaman_empat.dart';
import 'package:tap_material/registrasi.dart';

void main() {
  runApp(const HalamanDua());
}

class HalamanDua extends StatefulWidget {
  const HalamanDua({Key? key}) : super(key: key);

  @override
  _HalamanDuaState createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff79B4B7),
          body: Column(
            children: [
              Container(
                width: 400,
                height: 400,
                padding: EdgeInsets.all(40),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/Logo hitam.png",
                    ),
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
                    return Registrasi();
                  }));
                },
                child: Text(
                  "Mulai",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
