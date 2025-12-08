import 'package:flutter/material.dart';
import 'package:jurnalku_app/catatansikap_page.dart';
import 'package:jurnalku_app/login_page.dart';
import 'package:jurnalku_app/panduan_page.dart';
import 'package:jurnalku_app/pengaturan.dart';
import 'package:jurnalku_app/Profile.dart';
import 'package:jurnalku_app/pembiasaan_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Landing Page'),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context) => CatatanSikapPage(),
                ),
              );
            },
            child: Text('Go to catatan sikap page'),
          ),
          SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context) => PanduanPenggunaanPage(),
                ),
              );
            },
            child: Text('Go to catatan Panduan page'),
          ),
           SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context) => JurnalkuPage(),
                ),
              );
            },
            child: Text('Go to Login page'),
          ),
          SizedBox(height: 7,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context) => PengaturanPage(),
                ),
              );
            },
            child: Text('Go to Pengaturan page'),
          ),
          SizedBox(height: 7,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                ),
              );
            },
            child: Text('Go to Profile '),
          ),
           SizedBox(height: 7,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                  MaterialPageRoute(
                    builder: (context) => JurnalPembiasaanPage(),
                ),
              );
            },
            child: Text('Go to Pemb1asaan page'),
          ),
        ],
      ),
    );
  }
}