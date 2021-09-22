import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tap_material/detail_barang.dart';
import 'package:tap_material/halaman_empat.dart';
import 'package:tap_material/halaman_satu.dart';
import 'package:tap_material/keranjang.dart';

class HalamanDelapan extends StatelessWidget {
  const HalamanDelapan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("SEMUA PRODUK",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HalamanEmpat();
              }));
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Card(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail();
                          }));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/Pasir.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10,
                            30 + MediaQuery.of(context).size.height * 0.11,
                            10,
                            10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Text("Pasir",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 100.000",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xff79B4B7),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Keranjang();
                                      }));
                                    },
                                    child: Text(
                                      "+ Keranjang",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.add_business_outlined,
                                  size: 10,
                                ),
                                Text(
                                  "Tb. Cahaya",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Card(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail();
                          }));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/Pasir.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10,
                            30 + MediaQuery.of(context).size.height * 0.11,
                            10,
                            10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Text("Pasir",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 100.000",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xff79B4B7),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Keranjang();
                                      }));
                                    },
                                    child: Text(
                                      "+ Keranjang",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.add_business_outlined,
                                  size: 10,
                                ),
                                Text(
                                  "Tb. Cahaya",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Card(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail();
                          }));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/Pasir.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10,
                            30 + MediaQuery.of(context).size.height * 0.11,
                            10,
                            10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Text("Pasir",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 100.000",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xff79B4B7),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Keranjang();
                                      }));
                                    },
                                    child: Text(
                                      "+ Keranjang",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.add_business_outlined,
                                  size: 10,
                                ),
                                Text(
                                  "Tb. Cahaya",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Card(
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        )),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detail();
                          }));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/Pasir.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            10,
                            30 + MediaQuery.of(context).size.height * 0.11,
                            10,
                            10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Text("Pasir",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rp. 100.000",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xff79B4B7),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Keranjang();
                                      }));
                                    },
                                    child: Text(
                                      "+ Keranjang",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.add_business_outlined,
                                  size: 10,
                                ),
                                Text(
                                  "Tb. Cahaya",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
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
              icon: Icon(Icons.home),
              label: ("Beranda"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: ("Keranjang"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ("Akun"),
            ),
          ],
        ),
      ),
    );
  }
}
