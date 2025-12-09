import 'package:flutter/material.dart';

class Student {
  final String name;
  final String nis;
  final String rombel;
  final String rayon;
  final String photo;
  final int portfolioCount;
  final int certCount;

  Student({
    required this.name,
    required this.nis,
    required this.rombel,
    required this.rayon,
    required this.photo,
    required this.portfolioCount,
    required this.certCount,
  });
}

List<Student> students = [
  Student(
    name: "Abdee Munzie Alazkha",
    nis: "12510778",
    rombel: "PPLG X-3",
    rayon: "Cia 1",
    photo: "https://i.pravatar.cc/150?img=10",
    portfolioCount: 2,
    certCount: 13,
  ),
  Student(
    name: "Rizky Febian",
    nis: "12510779",
    rombel: "PPLG X-2",
    rayon: "Cib 2",
    photo: "https://i.pravatar.cc/150?img=12",
    portfolioCount: 5,
    certCount: 8,
  ),
  Student(
    name: "Nara Putra S",
    nis: "12510780",
    rombel: "PPLG X-1",
    rayon: "Cis 3",
    photo: "https://i.pravatar.cc/150?img=25",
    portfolioCount: 3,
    certCount: 6,
  ),
  Student(
    name: "Siti Nurhaliza",
    nis: "12510781",
    rombel: "PPLG X-2",
    rayon: "Cib 1",
    photo: "https://i.pravatar.cc/150?img=20",
    portfolioCount: 4,
    certCount: 10,
  ),
  Student(
    name: "Ahmad Dhani",
    nis: "12510782",
    rombel: "PPLG X-3",
    rayon: "Cia 2",
    photo: "https://i.pravatar.cc/150?img=33",
    portfolioCount: 6,
    certCount: 15,
  ),
];

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _searchController = TextEditingController();
  List<Student> filteredStudents = students;

  void _filterStudents(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredStudents = students;
      } else {
        filteredStudents = students.where((student) {
          return student.name.toLowerCase().contains(query.toLowerCase()) ||
              student.nis.contains(query) ||
              student.rombel.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        titleSpacing: 16,
        title: Row(
          children: [
            const Icon(
              Icons.insert_chart_outlined,
              color: Color(0xFF1E3A8A), // biru gelap
              size: 22,
            ),
            const SizedBox(width: 6),
            const Text(
              "Jurnalku",
              style: TextStyle(
                color: Color(0xFF1E3A8A),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 34,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E3A8A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                ),
                child: const Text(
                  "Dashboard",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        )
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          // HEADER SECTION
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Direktori Siswa",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // SEARCH BAR
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _searchController,
                              onChanged: _filterStudents,
                              decoration: InputDecoration(
                                hintText: "Cari nama siswa, NIS, atau rombel...",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 16,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 4),
                            child: ElevatedButton(
                              onPressed: () => _filterStudents(_searchController.text),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF1976D2),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                "Cari",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // STUDENT LIST SECTION (SCROLLABLE)
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // Info Text
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Menampilkan 1 - ${filteredStudents.length} dari ${students.length} siswa",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                ),

                // Student Cards
                ...filteredStudents.map((student) => StudentCard(student: student)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== CARD WIDGET ====================
class StudentCard extends StatelessWidget {
  final Student student;

  const StudentCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FOTO + DETAIL
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFF1976D2).withOpacity(0.3),
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage: NetworkImage(student.photo),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        student.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1A1A1A),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "${student.nis} | ${student.rombel} | ${student.rayon}",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Portfolio & Sertifikat
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.folder_outlined,
                          size: 18,
                          color: Color(0xFF1976D2),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "${student.portfolioCount} Portfolio",
                          style: TextStyle(
                            color: Color(0xFF1976D2),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.workspace_premium_outlined,
                          size: 18,
                          color: Colors.orange[700],
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "${student.certCount} Sertifikat",
                          style: TextStyle(
                            color: Colors.orange[700],
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Tombol Lihat Detail
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke detail page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1976D2),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Lihat Detail",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_rounded, size: 18),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}