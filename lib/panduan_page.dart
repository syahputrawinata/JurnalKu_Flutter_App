import 'package:flutter/material.dart';

class PanduanPenggunaanPage extends StatelessWidget {
  const PanduanPenggunaanPage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              '📔 Panduan Penggunaan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E40AF),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Selamat datang di panduan penggunaan aplikasi Jurnalku. '
              'Panduan ini akan membantu Anda memahami cara menggunakan '
              'fitur-fitur yang tersedia dengan optimal.',
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 24),

            const SectionTitle(title: 'Umum'),
            const SizedBox(height: 8),
            const FeatureTile(
              icon: Icons.person_outline,
              title: 'Unggah Profile',
              subtitle: 'Panduan untuk mengunggah profile pengguna',
            ),
            const FeatureTile(
              icon: Icons.lock_outline,
              title: 'Ganti Password',
              subtitle: 'Panduan untuk mengganti password pengguna',
            ),

            const SizedBox(height: 24),
            const SectionTitle(title: 'Untuk Siswa'),
            const SizedBox(height: 8),
            const FeatureTile(
              icon: Icons.book_outlined,
              title: 'Mengisi Jurnal',
              subtitle: 'Panduan untuk mengisi kegiatan sehari-hari',
            ),
            const FeatureTile(
              icon: Icons.account_box_outlined,
              title: 'Kelengkapan Profile',
              subtitle: 'Panduan untuk melengkapi profile',
            ),
            const FeatureTile(
              icon: Icons.folder_copy_outlined,
              title: 'Mengelola Portfolio',
              subtitle: 'Panduan untuk menambah, edit, dan hapus portfolio',
            ),
            const FeatureTile(
              icon: Icons.workspace_premium_outlined,
              title: 'Mengelola Sertifikat',
              subtitle: 'Panduan untuk menambah, edit, dan hapus sertifikat',
            ),
            const FeatureTile(
              icon: Icons.fact_check_outlined,
              title: 'Catatan Sikap Saya',
              subtitle: 'Panduan untuk melihat dan memahami catatan sikap',
            ),
          ],
        ),
      ),
    );  
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.black,
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FeatureTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      color: Colors.grey[100],
      child: ListTile(
        leading: Icon(icon, color: Colors.blue[800]),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        subtitle: Text(subtitle),
        onTap: () {},
      ),
    );
  }
}
