import 'package:flutter/material.dart';

class JurnalPembiasaanPage extends StatelessWidget {
  const JurnalPembiasaanPage({super.key});

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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jurnal Pembiasaan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "NOVEMBER - 2025",
              style: TextStyle(fontSize: 16,),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {},
                  child: const Text("← Bulan Sebelumnya", style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "A. Pembiasaan harian",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.green),
                SizedBox(width: 2),
                Text("Sudah diisi"),
                SizedBox(width: 28),
                CircleAvatar(radius: 6, backgroundColor: Colors.grey),
                SizedBox(width: 2),
                Text("Belum diisi"),
                SizedBox(width: 28),
                CircleAvatar(radius: 6, backgroundColor: Colors.red),
                SizedBox(width: 2),
                Text("Tidak diisi"),
              ],
            ),

            const SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(30, (i) {
                return Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    color:  Colors.grey[300] ,
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(
                          (i + 1).toString().padLeft(2, '0'),
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            const Text(
              "B. Pekerjaan yang dilakukan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Card(
                    child: ExpansionTile(
                      title: Text('Mengelola Keuangan'),
                      subtitle: Text("18 November 2025"),
                      childrenPadding: EdgeInsets.all(16),
                      children: [
                        tampilData('Pekerjaan', 'Mengelola Keuangan'),
                        tampilData('Tgl', '18 November 2025'),
                        tampilData('Saksi', 'Muhammad Jauhara Makinan'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

              const SizedBox(height: 6),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  "+ Tambah Pekerjaan",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            const SizedBox(height: 30),
            const Text(
              "C. Materi yang dipelajari",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                children: [
                  Card(
                    child: ExpansionTile(
                      title: Text('Flutter Dasar'),
                      subtitle: Text("Bagus sekali, teruskan!"),
                      childrenPadding: EdgeInsets.all(16),
                      children: [
                        tampilData('Materi', 'Flutter Dasar'),
                        tampilData('Sts', 'Bagus sekali, teruskan!'),
                        tampilData('Tgl', '18 November 2025'),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 6),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  "+ Tambah Materi",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            const SizedBox(height: 30),
            const Row(
              children: [
                CircleAvatar(radius: 6, backgroundColor: Colors.green),
                SizedBox(width: 6),
                Text("A : Approved   "),
                SizedBox(width: 18),
                CircleAvatar(radius: 6, backgroundColor: Colors.orange),
                SizedBox(width: 6),
                Text("P : Pending   "),
                SizedBox(width: 18),
                CircleAvatar(radius: 6, backgroundColor: Colors.red),
                SizedBox(width: 6),
                Text("R : Revisi"),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              "D. Poin",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.grey.shade300, width: 0.8),
  ),
  child: Table(
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    border: TableBorder(
      horizontalInside: BorderSide(color: Colors.grey.shade300, width: .6),
    ),
    columnWidths: const {
      0: FlexColumnWidth(3.2),
      1: FlexColumnWidth(.7),
      2: FlexColumnWidth(.7),
      3: FlexColumnWidth(.7),
      4: FlexColumnWidth(.7),
    },
    children: [
      
      TableRow(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 240, 240, 240)),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
            child: Text("Kategori Poin", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.middle,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Colors.grey.shade300, width: .6)),
              ),
              child: const Text("Jumlah Poin", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(),
          const SizedBox(),
          const SizedBox(),
        ],
      ),
    ],
  ),
),

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    poinCard(
      title: "(5) Mengerjakan project / update progres belajar",
      values: [0, 0, 0, 0],
    ),
    poinCard(
      title: "(1-5) Poin dari pertanyaan atau laporan materi",
      values: [0, 0, 0, 0],
    ),
    poinCard(
      title: "Jumlah poin minggu ini",
      values: [0, 0, 0, 0],
    ),
    jumlahPoinCard(
      title: "Jumlah poin",
      values: [0, 0],
      subtitles: ["Jumlah poin ceklist pembiasaan", "Jumlah keseluruhan poin"],
    ),
  ],
)


          ],
        ),
      ),
    );
  }
}

Widget poinCard({
  required String title,
  required List<int> values,
}) {
  return Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.shade300, width: 0.8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 10),

        // GRID NILAI (M1 - M4)
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: values.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,     
            mainAxisExtent: 45,
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade300),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("M${index + 1}"),
                  Text(values[index].toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            );
          },
        ),
      ],
    ),
  );
}

Widget jumlahPoinCard({
  required String title,
  required List<String> subtitles, // ← judul tiap baris
  required List<int> values,       // ← nilai tiap baris
}) {
  return Container(
    padding: const EdgeInsets.all(12),
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.shade300, width: 0.8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 10),

        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: subtitles.length,
          itemBuilder: (context, index) {
            return Container(
              height: 45,
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text(subtitles[index])),
                  Text(
                    values[index].toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );
}

Widget tampilData(String labelData, String value,) {
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