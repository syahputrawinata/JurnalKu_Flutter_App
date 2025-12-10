import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProgressBelajar extends StatelessWidget {
  String _getCurrentDate() {
    final now = DateTime.now();
    return DateFormat('EEEE, d MMMM yyyy').format(now);
  }

  const ProgressBelajar({super.key});

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
            Navigator.pushNamed(context, '/explore');
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
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: const CircleAvatar(
                    radius: 16,
                    child: Icon(Icons.person, size: 32),
                  ),
                );
              },
            ),
          )
        ]
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('Menu', style: TextStyle(
                  color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/dashboard");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Profil'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/profil");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Jelajahi'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/explore");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Jurnal Pembiasaan'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/jurnalpembiasaan");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Permintaan Saksi'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/permintaansaksi");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Progress'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/progresbelajar");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Cataan Sikap'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/catatansikap");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Panduan Penggunaan'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/panduanpenggunaan");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan Akun'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/pengaturanakun");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Log out'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/login");
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Progress Belajar Saya',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Pantau perkembangan kompetensi dan materi pembelajaran Anda',
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                child: Text(
                  _getCurrentDate(),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[700],
                    // fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Pengajuan', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 6),
                      Text('5', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Icon(Icons.circle, size: 10, color: Colors.blue),
                          SizedBox(width: 6),
                          Text("Semua Status", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.check_circle_outline, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Halaman Ini', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 6),
                      Text('0', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Icon(Icons.circle, size: 10, color: Colors.green),
                          SizedBox(width: 6),
                          Text("Data Ditampilkan", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.date_range_outlined, color: Colors.green),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text('Status Pending', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 6),
                      Text('2', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Icon(Icons.circle, size: 10, color: Colors.orange),
                          SizedBox(width: 6),
                          Text("Perlu Validasi", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.timelapse_outlined, color: Colors.orange),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text('Total Halaman', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 6),
                      Text('1', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Icon(Icons.circle, size: 10, color: Colors.purple),
                          SizedBox(width: 6),
                          Text("Navigasi Tersedia", style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.light_rounded, color: Colors.purple),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Text("Project Work", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5),
                  Text(
                    'Pantau perkembangan kompetensi dan materi pembelajaran Anda',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  Card(
                    child: ExpansionTile(
                      title: Text('Mengelola Keuangan'),
                      subtitle: Text("Budi Santoso"),
                      childrenPadding: EdgeInsets.all(16),
                      children: [
                        tampilData('Kompetensi', 'Mengelola Keuangan'),
                        tampilData('Guru', 'Budi Santoso'),
                        tampilData('Tanggal', '10 November 2025'),
                        tampilData('Status', 'Pending'),
                        tampilData('Catatan Guru', 'Perlu revisi pada bagian laporan keuangan.'),
                        tampilData('Catatan Siswa', 'Saya akan segera memperbaiki laporan tersebut.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Text("Mobile Apps", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5),
                  Text(
                    'Kompetensi dan materi pembelajaran',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  Card(
                    child: ExpansionTile(
                      title: Text('Mengelola Keuangan'),
                      subtitle: Text("Budi Santoso"),
                      childrenPadding: EdgeInsets.all(16),
                      children: [
                        tampilData('Kompetensi', 'Mengelola Keuangan'),
                        tampilData('Guru', 'Budi Santoso'),
                        tampilData('Tanggal', '10 November 2025'),
                        tampilData('Status', 'Pending'),
                        tampilData('Catatan Guru', 'Perlu revisi pada bagian laporan keuangan.'),
                        tampilData('Catatan Siswa', 'Saya akan segera memperbaiki laporan tersebut.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Text("UKK (Uji Kompetensi Keahlian)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5),
                  Text(
                    'Kompetensi dan materi pembelajaran',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  Card(
                    child: ExpansionTile(
                      title: Text('Mengelola Keuangan'),
                      subtitle: Text("Budi Santoso"),
                      childrenPadding: EdgeInsets.all(16),
                      children: [
                        tampilData('Kompetensi', 'Mengelola Keuangan'),
                        tampilData('Guru', 'Budi Santoso'),
                        tampilData('Tanggal', '10 November 2025'),
                        tampilData('Status', 'Pending'),
                        tampilData('Catatan Guru', 'Perlu revisi pada bagian laporan keuangan.'),
                        tampilData('Catatan Siswa', 'Saya akan segera memperbaiki laporan tersebut.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Text("GIM", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5),
                  Text(
                    'Kompetensi dan materi pembelajaran',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  Card(
                    child: ExpansionTile(
                      title: Text('Mengelola Keuangan'),
                      subtitle: Text("Budi Santoso"),
                      childrenPadding: EdgeInsets.all(16),
                      children: [
                        tampilData('Kompetensi', 'Mengelola Keuangan'),
                        tampilData('Guru', 'Budi Santoso'),
                        tampilData('Tanggal', '10 November 2025'),
                        tampilData('Status', 'Pending'),
                        tampilData('Catatan Guru', 'Perlu revisi pada bagian laporan keuangan.'),
                        tampilData('Catatan Siswa', 'Saya akan segera memperbaiki laporan tersebut.'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Text("Lainnya", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5),
                  Text(
                    'Kompetensi dan materi tambahan',
                    style: TextStyle(fontSize: 15, color: Colors.black54),
                  ),
                  Card(
                    child: ExpansionTile(
                      title: Text('Mengelola Keuangan'),
                      subtitle: Text("Budi Santoso"),
                      childrenPadding: EdgeInsets.all(16),
                      children: [
                        tampilData('Kompetensi', 'IDS dan SDLC kejar.id'),
                        tampilData('Tanggal', _getCurrentDate()),
                        tampilData('Catatan', '-'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}

Widget tampilData(String labelData, String value) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        SizedBox(width: 100, child: Text(labelData),),
        Expanded(child: Text(value),),
      ],
    ),
  );
}