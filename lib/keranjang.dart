import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tap_material/halaman_empat.dart';
import 'package:tap_material/profil_user.dart';
import 'checkout.dart';

class Keranjang extends StatefulWidget {
  const Keranjang({Key? key}) : super(key: key);

  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {
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
          title: const Text(
            'KERANJANG',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Color(0xFFFFFFFF),
          elevation: 10,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications, color: Colors.black),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 18.0,
              ),
              Barang(),
              Barang(),
              Barang(),
              Spacer(),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Checkout(),
                      ),
                    );
                  },
                  child: Text('CHECKOUT'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    primary: Color(0xff79B4B7),
                    onPrimary: Colors.white,
                  ),
                ),
              ),
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

class Barang extends StatelessWidget {
  const Barang({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage('assets/images/batu.jpg'),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        'Nama Barang',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.delete_outline,
                      color: Colors.black,
                      size: 25,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.store),
                    Text(
                      'Nama Toko',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xFF79B4B7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xFF79B4B7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Rp.10.000",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
