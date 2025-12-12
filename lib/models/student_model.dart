class Student {
  final int id;
  final String name;
  final String email;
  final String nis;
  final String rombel;
  final String rayon;
  final String grade;
  final String image;

  // nilai default untuk UI
  final int portfolioCount;
  final int certCount;

  Student({
    required this.id,
    required this.name,
    required this.email,
    required this.nis,
    required this.rombel,
    required this.rayon,
    required this.grade,
    required this.image,
    this.portfolioCount = 0,
    this.certCount = 0,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      nis: json['nis'].toString(),
      rombel: json['rombel'],
      rayon: json['rayon'],
      grade: json['grade'],
      image: json['image'] ?? "",
      portfolioCount: 0,
      certCount: 0,
    );
  }
}