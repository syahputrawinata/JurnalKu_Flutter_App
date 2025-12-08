import 'package:flutter/material.dart';
import 'package:jurnalku_app/landing_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  Widget _menuItem(IconData icon, String title, String subtitle) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 28),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(subtitle,
                    style: TextStyle(fontSize: 13, color: Colors.black54)),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }

  Widget _statCard(String title, String value, Color color, IconData icon) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 14)),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    value,
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.circle, color: color, size: 12),
                ],
              ),
            ],
          ),
          Icon(icon, size: 28, color: color),
        ],
      ),
    );
  }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 50, bottom: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0A5CD5), Color(0xFF013A8A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Selamat Datang di Jurnalku",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    colors: [Color(0xFF0A5CD5), Color(0xFF013A8A)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Apa itu Jurnalku?",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            _featureCard("Dirancang Khusus",
                "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                Icons.apartment),
            _featureCard("Efektif",
                "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                Icons.security),
            _featureCard("Terintegrasi",
                "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                Icons.school),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text("MENU APLIKASI",
                  style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  _menuItem(Icons.person, "Profil", "Lihat dan kelola profilmu disini"),
                  _menuItem(Icons.assignment, "Portofolio",
                      "Lihat dan kelola portofolio kompetensimu disini"),
                  _menuItem(Icons.verified, "Sertifikat",
                      "Lihat dan unduh sertifikat kompetensimu disini"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  _menuItem(Icons.note_alt, "Jurnal Pembiasaan",
                      "Catat dan pantau kegiatan pembiasaan harianmu"),
                  _menuItem(Icons.groups, "Permintaan Saksi",
                      "Lihat teman yang mengajukan permintaan saksi"),
                  _menuItem(Icons.show_chart, "Progress",
                      "Lihat kemajuan kompetensi dan pencapaian belajarmu"),
                  _menuItem(Icons.fact_check, "Catatan Sikap",
                      "Lihat catatan sikap dan perilaku dari guru"),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("STATISTIK KOMPETENSI",
                  style:
                      TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  _statCard("Materi Diselesaikan", "3", Colors.green,
                      Icons.check_circle),
                  SizedBox(height: 14),
                  _statCard("Pengajuan Pending", "2", Colors.orange,
                      Icons.watch_later),
                  SizedBox(height: 14),
                  _statCard("Materi Hari Ini", "0", Colors.blue,
                      Icons.calendar_today),
                  SizedBox(height: 14),
                  _statCard("Materi Revisi", "0", Colors.purple,
                      Icons.refresh),
                ],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Progress Akademik",
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
            ),

            SizedBox(height: 12),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _progressRow("Selesai", 3, Colors.blue),
                    _progressRow("Pending", 2, Colors.orange),
                    _progressRow("Belum", 0, Colors.grey),
                    _progressRow("Hari Ini", 0, Colors.blueGrey),
                  ],
                ),
              ),
            ),
             const SizedBox(height: 12),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Lihat Progress Kamu →'),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),

                    _progressItem("Normalisasi Klinik", "Pending"),
                    SizedBox(height: 10),
                    _progressItem("Normalisasi Rapor", "Pending"),

                    SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Lihat semua Kompetensi →",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2), // jarak kecil biar mirip desain
                            Container(
                              height: 1,
                              width: 165, // sesuaikan panjang garis
                              color: Colors.black,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 18),
              color: Colors.blue.shade50, // biru muda sesuai desain
              child: Center(
                child: Text(
                  '© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.',
                  style: TextStyle(fontSize: 11, color: Colors.purple),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _featureCard(String title, String subtitle, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
          ],
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue, size: 36),
            SizedBox(height: 14),
            Text(title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(height: 6),
            Text(subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.black54)),
          ],
        ),
      ),
    );
  }

  Widget _progressRow(String title, int value, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.circle, size: 10, color: color),
              SizedBox(width: 6),
              Text(title, style: TextStyle(fontSize: 14)),
            ],
          ),
          Text(value.toString(),
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

Widget _progressItem(String title, String status) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title, style: TextStyle(fontSize: 14)),
      Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFFFFF3C2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(status, style: TextStyle(fontSize: 12, color: Colors.orange)),
      ),
    ],
  );
}