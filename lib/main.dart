import 'package:flutter/material.dart';
import 'package:tap_material/halaman_satu.dart';
import 'package:tap_material/profil_toko.dart';
import 'package:tap_material/profil_user.dart';
import 'package:tap_material/registrasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanSatu(),
    );
  }
}
