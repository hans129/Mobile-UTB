import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fitur Aplikasi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FiturAplikasiPage()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FiturAplikasiPage extends StatelessWidget {
  final List<Map<String, dynamic>> fiturAplikasi = [
    {"icon": Icons.folder, "label": "Dokumen", "color": Colors.orange, "description": "Token Pengajuan Dokumen untuk kebutuhan perkuliahan"},
    {"icon": Icons.calendar_today, "label": "Kalender", "color": Colors.purple, "description": "Melihat kalender semester"},
    {"icon": Icons.attach_money, "label": "Keuangan", "color": Colors.green, "description": "Melihat dan kelola keuangan anda"},
    {"icon": Icons.assignment, "label": "Nilai Akhir", "color": Colors.yellow, "description": "Melihat nilai akhir ujian"},
    {"icon": Icons.book, "label": "Materi & Tugas", "color": Colors.blue, "description": "Melihat materi pelajaran dan tugas mata kuliah"},
    {"icon": Icons.people, "label": "Perwalian", "color": Colors.brown, "description": "Melihat Wali Dosen dan KRS"},
    {"icon": Icons.event_note, "label": "SKKM", "color": Colors.purple, "description": "Melihat penilaian aktivitas mahasiswa"},
    {"icon": Icons.contact_page, "label": "Support Account", "color": Colors.orange, "description": "Melihat akun mahasiswa"},
    {"icon": Icons.school, "label": "Tugas Akhir / Wisuda", "color": Colors.cyan, "description": "Mempermudah mahasiswa menyelesaikan tahap akhir studi lulusan"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitur Aplikasi"),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: fiturAplikasi.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DummyPage(title: fiturAplikasi[index]['label'])),
              );
            },
            child: Card(
              color: fiturAplikasi[index]['color'],
              margin: EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(fiturAplikasi[index]['icon'], color: Colors.white, size: 30),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fiturAplikasi[index]['label'],
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 4),
                          Text(
                            fiturAplikasi[index]['description'],
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DummyPage extends StatelessWidget {
  final String title;
  DummyPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Halaman $title masih dalam pengembangan",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
