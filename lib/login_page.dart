import 'package:flutter/material.dart';

class JurnalkuPage extends StatelessWidget {
  const JurnalkuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== HEADER LOGIN =====
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF0D47A1), // biru tua
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(top: 80, bottom: 40),
              child: Column(
                children: [
                  // Gambar di atas form login
                  Image.asset(
                    'assets/images/Banner_Web.jpg',
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Username atau NIS",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: "Masukkan username atau NIS",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "Password",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Masukkan password",
                            border: const OutlineInputBorder(),
                            suffixIcon: Icon(Icons.visibility_off_outlined),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 12,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi tombol masuk
                              Navigator.pushNamed(context, '/dashboard');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0D47A1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Masuk",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Center(
                          child: Text(
                            "Lupa password? Hubungi guru laboran.",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ===== BAGIAN DESKRIPSI FITUR =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Menyatukan Upaya untuk Kemajuan Siswa",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa "
                    "dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),

            // ===== DAFTAR FITUR =====
            const _FeatureCard(
              icon: Icons.school,
              color: Colors.amber,
              title: "Dirancang untuk Sekolah Kami",
              desc:
                  "Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.",
            ),
            const _FeatureCard(
              icon: Icons.account_tree,
              color: Colors.purpleAccent,
              title: "Pemantauan yang Terstruktur",
              desc:
                  "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
            ),
            const _FeatureCard(
              icon: Icons.accessibility_new,
              color: Colors.lightBlue,
              title: "Fitur Praktis dan Bermanfaat",
              desc:
                  "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
            ),
            const _FeatureCard(
              icon: Icons.school_outlined,
              color: Colors.orangeAccent,
              title: "Pengajuan Kompetensi oleh Siswa",
              desc:
                  "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
            ),
            const _FeatureCard(
              icon: Icons.verified,
              color: Colors.green,
              title: "Validasi dan Tanda Tangan Guru",
              desc:
                  "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
            ),
            const _FeatureCard(
              icon: Icons.computer,
              color: Colors.pinkAccent,
              title: "Pantauan Real-Time dan Transparan",
              desc:
                  "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
            ),

            const SizedBox(height: 40),
            Center(
              child: Column(
                children: const [
                  Text(
                    "© GEN-28 PPLG SMK Wikrama Bogor",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "All Rights Reserved.",
                    style: TextStyle(color: Colors.black54),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFF0D47A1),
        icon: const Icon(Icons.compass_calibration, color: Colors.white),
        label: const Text(
          'Jelajahi siswa',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String desc;

  const _FeatureCard({
    required this.icon,
    required this.color,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 6),
                Text(desc, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
