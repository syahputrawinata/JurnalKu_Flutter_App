import 'package:flutter/material.dart';
import 'package:jurnalku_app/catatansikap_page.dart';
import 'package:jurnalku_app/panduan_page.dart';

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
        ],
      ),
    );
  }
}