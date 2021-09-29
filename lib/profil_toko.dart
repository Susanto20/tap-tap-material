import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:tap_material/halaman_empat.dart';
import 'package:tap_material/keranjang.dart';
import 'package:tap_material/profil_user.dart';

class ProfilToko extends StatefulWidget {
  const ProfilToko({Key? key}) : super(key: key);

  @override
  _ProfilTokoState createState() => _ProfilTokoState();
}

class _ProfilTokoState extends State<ProfilToko> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
          title: const Text('PROFIL TOKO',
              textAlign: TextAlign.left,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 10,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications, color: Colors.black),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 7),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/Logo.jpeg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 14,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Nama Toko',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(
                          width: 250,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Text(
                              'Kota Toko',
                            ),
                            Divider(
                              height: 20,
                            ),
                            Spacer(
                              flex: 3,
                            ),
                            Text(
                              'Ikuti+',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff79B4B7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle_rounded,
                            size: 12,
                            color: Colors.green,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: Text(
                              'Online',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Alamat lengkap Toko',
                            style: TextStyle(
                              letterSpacing: 1,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 10,
                      ),
                      ElevatedButton.icon(
                        label: const Text(
                          'Chat',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        icon: const Icon(
                          Icons.chat_bubble,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilToko(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: Color(0xff3EB489),
                          onPrimary: const Color(0xff3EB489),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 30,
            ),
            Center(
              child: Container(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      '4.8',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(Icons.access_time),
                    Text(
                      '30 Menit',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ulasan dan Penilaian',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    Text(
                      'Respon chat rata-rata ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.store),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.money_off),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.sticky_note_2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListBarang(),
                ListBarang(),
              ],
            ),
            Divider(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListBarang(),
                ListBarang(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff79B4B7),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HalamanEmpat();
                  }));
                },
                icon: Icon(Icons.home),
              ),
              label: ("Beranda"),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Keranjang();
                    }));
                  },
                  icon: Icon(Icons.shopping_cart_outlined)),
              label: ("Keranjang"),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ProfilUser();
                    }));
                  },
                  icon: Icon(Icons.person)),
              label: ("Akun"),
            ),
          ],
        ),
      ),
    );
  }
}

class ListBarang extends StatelessWidget {
  const ListBarang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      width: 120,
      child: ListView(
        children: [
          Container(
            width: 300,
            height: 150,
            child: Card(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: AssetImage('assets/images/batu.jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Nama Barang',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Rp.99.999',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
