import 'package:flutter/material.dart';
import 'package:jurnalku_app/landing_page.dart';

class PermintaanSaksi extends StatelessWidget {
  const PermintaanSaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LandingPage(),
              ),
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Syahputra Winata',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'PPLG XII-4',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: const Icon(Icons.person, size: 32),
              radius: 16,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Permintaan Saksi",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            SizedBox(height: 20),

            //tanggal
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                child: Text(
                  'Thursday, 13 November 2025',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[700],
                    // fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            //tabel
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text('PENGIRIM', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text('TANGGAL', style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(child: Text('KONFIRMASI', style: TextStyle(fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Icon(Icons.group, size: 50, color: Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    "Belum ada permintaan",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Belum ada yang mengirim permintaan saksi kepada Anda',
                    style: TextStyle(fontSize: 14, color: Colors.black45),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}