import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PengaturanPage extends StatefulWidget {
  const PengaturanPage({super.key});

  @override
  State<PengaturanPage> createState() => _PengaturanPageState();
}

class _PengaturanPageState extends State<PengaturanPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController nisController = TextEditingController();
  final TextEditingController rombelController = TextEditingController();
  final TextEditingController rayonController = TextEditingController();

  String _oldPass = '';
  String _newPass = '';

  final int userId = 1;

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  Future<void> fetchUser() async {
    final response = await http.get(
      Uri.parse('http://127.0.0.1:8000/api/users/$userId'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      setState(() {
        nameController.text = data['name'] ?? '-';
        nisController.text = data['nis'].toString();
        rombelController.text = data['rombel'] ?? '-';
        rayonController.text = data['rayon'] ?? '-';
      });
    } else {
      print("Gagal fetch user");
    }
  }

  InputDecoration _readOnlyDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: const Color(0xFFF4F6FA),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
    );
  }

  InputDecoration _passwordDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: const Color(0xFFF4F6FA),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      suffixIcon: const Icon(Icons.visibility_outlined, color: Colors.blueGrey),
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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pengaturan Akun',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                const Text('Dashboard', style: TextStyle(color: Colors.blueGrey)),
                const Text(' / '),
                Text('Pengaturan Akun', style: TextStyle(color: Colors.blue.shade700)),
              ],
            ),
            const SizedBox(height: 16),

            // --- KARTU INFORMASI PROFIL ---
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Informasi Profil',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                    const SizedBox(height: 12),

                    // hanya 1 avatar kanan
                    Center(
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 70,
                                backgroundColor: Colors.blueGrey[50],
                                child: const Icon(Icons.person, size: 50, color: Colors.blueGrey),
                              ),
                              Positioned(
                                right: 0,
                                bottom: 0,
                                child: InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.all(6),
                                    child: const Icon(Icons.camera_alt,
                                        color: Colors.white, size: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Klik untuk mengubah foto',
                            style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),
                    const Text('Nama', style: TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: nameController,
                      readOnly: true,
                      decoration: _readOnlyDecoration('Nama'),
                    ),
                    const SizedBox(height: 12),
                    const Text('NIS', style: TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: nisController,
                      readOnly: true,
                      decoration: _readOnlyDecoration('NIS'),
                    ),
                    const SizedBox(height: 12),
                    const Text('Rombel', style: TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: rombelController,
                      readOnly: true,
                      decoration: _readOnlyDecoration('Rombel'),
                    ),
                    const SizedBox(height: 12),
                    const Text('Rayon', style: TextStyle(fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: rayonController,
                      readOnly: true,
                      decoration: _readOnlyDecoration('Rayon'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 18),

            // --- KARTU UBAH PASSWORD ---
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text('Ubah Kata Sandi',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                  const SizedBox(height: 12),
                  const Text('Kata Sandi Lama', style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  TextFormField(
                    initialValue: _oldPass,
                    obscureText: false,
                    decoration: _passwordDecoration('Masukkan password'),
                    onChanged: (v) => _oldPass = v,
                  ),
                  const SizedBox(height: 8),
                  const Text('Masukkan kata sandi lama anda',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 12)),
                  const SizedBox(height: 14),
                  const Text('Kata Sandi Baru', style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  TextFormField(
                    initialValue: _newPass,
                    obscureText: false,
                    decoration: _passwordDecoration('Masukkan password'),
                    onChanged: (v) => _newPass = v,
                  ),
                  const SizedBox(height: 18),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Perubahan disimpan')),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF003F8A),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text('Simpan Perubahan',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white)),
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
