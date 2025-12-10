import 'package:flutter/material.dart';
import 'package:jurnalku_app/Profile.dart';
import 'package:jurnalku_app/catatansikap_page.dart';
import 'package:jurnalku_app/dashboard_page.dart';
import 'package:jurnalku_app/explore_page.dart';
import 'package:jurnalku_app/jelajahi_page.dart';
import 'package:jurnalku_app/login_page.dart';
import 'package:jurnalku_app/panduan_page.dart';
import 'package:jurnalku_app/pembiasaan_page.dart';
import 'package:jurnalku_app/pengaturan.dart';
import 'package:jurnalku_app/permintaansaksi_page.dart';
import 'package:jurnalku_app/progressbelajar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JurnalKu Mobile',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: LandingPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => JelajahiPage(),
        '/login': (context) => JurnalkuPage(),
        '/dashboard': (context) => Dashboard(),
        '/profil': (context) => Profile(),
        '/jelajahi': (context) => JelajahiPage(),
        '/explore': (context) => ExplorePage(),
        '/catatansikap': (context) => CatatanSikapPage(),
        '/panduanpenggunaan': (context) => PanduanPenggunaanPage(),
        '/pengaturanakun': (context) => PengaturanPage(),
        '/jurnalpembiasaan': (context) => JurnalPembiasaanPage(),
        '/permintaansaksi': (context) => PermintaanSaksi(),
        '/progresbelajar': (context) => ProgressBelajar(),
      },
    );
  }
}