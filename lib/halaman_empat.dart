import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tap_material/halaman_delapan.dart';
import 'package:tap_material/halaman_satu.dart';
import 'package:tap_material/detail_barang.dart';
import 'package:tap_material/keranjang.dart';
import 'package:tap_material/profil_user.dart';

void main() {
  runApp(const HalamanEmpat());
}

class HalamanEmpat extends StatelessWidget {
  const HalamanEmpat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image(
            image: AssetImage("assets/images/Logo taptap.png"),
          ),
          title: Text(
            "TAP TAP MATERIAL",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              color: Colors.black,
            )
          ],
        ),
        body: Container(
          margin: EdgeInsets.all(19),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9)),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Mau beli apa hari ini ?",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(3),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff79B4B7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffD5D5D5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Kayu",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffD5D5D5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Besi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffD5D5D5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {},
                      child: Text(
                        "Kursi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "MITRA KAMI",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HalamanDelapan();
                        }));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(color: Color(0xff79B4B7)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                  Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.41,
                  height: MediaQuery.of(context).size.height * 0.24,
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
                              return HalamanDelapan();
                            }));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Toko.jpg"),
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
                                  child: Text("Tb. Namiroh Jaya",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  Text("Jl. A. Yani",
                                      style: TextStyle(fontSize: 10))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.41,
                  height: MediaQuery.of(context).size.height * 0.24,
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
                              return HalamanDelapan();
                            }));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Toko.jpg"),
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
                                  child: Text("Tb. Namiroh Jaya",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  Text("Jl. A. Yani",
                                      style: TextStyle(fontSize: 10))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  )
                                ],
                              ),
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
                  width: MediaQuery.of(context).size.width * 0.41,
                  height: MediaQuery.of(context).size.height * 0.24,
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
                              return HalamanDelapan();
                            }));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Toko.jpg"),
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
                                  child: Text("Tb. Namiroh Jaya",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  Text("Jl. A. Yani",
                                      style: TextStyle(fontSize: 10))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.41,
                  height: MediaQuery.of(context).size.height * 0.24,
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
                              return HalamanDelapan();
                            }));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Toko.jpg"),
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
                                  child: Text("Tb. Namiroh Jaya",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  Text("Jl. A. Yani",
                                      style: TextStyle(fontSize: 10))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "PRODUK",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HalamanDelapan();
                        }));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(color: Color(0xff79B4B7)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <
                  Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.41,
                  height: MediaQuery.of(context).size.height * 0.24,
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
                              return HalamanDelapan();
                            }));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Toko.jpg"),
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
                                  child: Text("Tb. Namiroh Jaya",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  Text("Jl. A. Yani",
                                      style: TextStyle(fontSize: 10))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.41,
                  height: MediaQuery.of(context).size.height * 0.24,
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
                              return HalamanDelapan();
                            }));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/Toko.jpg"),
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
                                  child: Text("Tb. Namiroh Jaya",
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 10,
                                  ),
                                  Text("Jl. A. Yani",
                                      style: TextStyle(fontSize: 10))
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 10,
                                  ),
                                  Text(
                                    "4.8",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  )
                                ],
                              ),
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
