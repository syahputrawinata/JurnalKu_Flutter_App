import 'package:flutter/material.dart';

class JurnalPembiasaanPage extends StatelessWidget {
  const JurnalPembiasaanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
     appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: Icon(Icons.home_outlined),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Muhammad Jauhara Makinan",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PPLG XII-4",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundImage: AssetImage(''),
                ),
              ],
            ),
          ),
        ],
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
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                },
                border: const TableBorder(
                  horizontalInside: BorderSide(color: Colors.grey, width: 0.3),
                ),
                children: const [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Pekerjaan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Tgl",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Saksi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Belum ada pekerjaan yang diinput.",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(12), child: Text("")),
                      Padding(padding: EdgeInsets.all(12), child: Text("")),
                    ],
                  ),
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
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Table(
                columnWidths: const {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                },
                border: const TableBorder(
                  horizontalInside: BorderSide(color: Colors.grey, width: 0.3),
                ),
                children: const [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 240, 240),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Materi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Sts",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Tgl",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Text(
                          "Belum ada materi yang diinput.",
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(12), child: Text("")),
                      Padding(padding: EdgeInsets.all(12), child: Text("")),
                    ],
                  ),
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

      // HEADER BARIS 2 (M1 - M4)
      const TableRow(
        decoration: BoxDecoration(color: Color.fromARGB(255, 240, 240, 240)),
        children: [
          SizedBox(),
          Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Text("M1", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Text("M2", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Text("M3", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.symmetric(vertical: 8), child: Text("M4", textAlign: TextAlign.center)),
        ],
      ),

      TableRow(
        children: const [
          Align(
            
            child: Padding(
              padding: EdgeInsets.all(8),
            
              child:
               Text("Jumlah Poin", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              
            ),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
        ],
      ),

      // ROW 2
      TableRow(
        children: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("(5) mengerjakan project/adanya update progress belajar"),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
        ],
      ),

      // ROW 3
      TableRow(
        children: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("(1 - 5) poin dari pertanyaan atau laporan pengetahuan materi"),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
        ],
      ),

      // ROW JUMLAH MINGGU INI
      TableRow(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
        children: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Jumlah poin minggu ini", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
          Padding(padding: EdgeInsets.all(6), child: Text("0", textAlign: TextAlign.center)),
        ],
      ),

      // ROW CEKLIST
      TableRow(
        children: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Jumlah poin ceklist pembiasaan"),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("")),
          Padding(
            padding: EdgeInsets.all(6),
            child: Text("19", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("")),
          Padding(padding: EdgeInsets.all(6), child: Text("")),
        ],
      ),

      // ROW TOTAL KESELURUHAN
      TableRow(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 245, 245, 245)),
        children: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Jumlah keseluruhan poin", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("")),
          Padding(
            padding: EdgeInsets.all(6),
            child: Text("19", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(padding: EdgeInsets.all(6), child: Text("")),
          Padding(padding: EdgeInsets.all(6), child: Text("")),
        ],
      ),
    ],
  ),
)


          ],
        ),
      ),
    );
  }
}