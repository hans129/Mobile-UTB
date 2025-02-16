import 'package:flutter/material.dart';
import 'FiturAplikasiPage.dart';
import 'biodata.dart';

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
  final List<Map<String, dynamic>> fiturAplikasi = [
    {
      "icon": Icons.folder,
      "label": "Dokumen",
      "page": DokumenPage(),
      "color": Colors.blue
    },
    {
      "icon": Icons.calendar_today,
      "label": "Kalender",
      "page": KalenderPage(),
      "color": Colors.green
    },
    {
      "icon": Icons.attach_money,
      "label": "Keuangan",
      "page": KeuanganPage(),
      "color": Colors.orange
    },
    {
      "icon": Icons.assignment,
      "label": "Materi & Tugas",
      "page": MateriTugasPage(),
      "color": Colors.red
    },
    {
      "icon": Icons.book,
      "label": "Nilai Akhir",
      "page": NilaiAkhirPage(),
      "color": Colors.purple
    },
    {
      "icon": Icons.people,
      "label": "Perwalian",
      "page": PerwalianPage(),
      "color": Colors.teal
    },
    {
      "icon": Icons.event_note,
      "label": "SKKM",
      "page": SKKMPage(),
      "color": Colors.amber
    },
    {
      "icon": Icons.contact_page,
      "label": "Support Account",
      "page": SupportPage(),
      "color": Colors.pink
    },
    {
      "icon": Icons.school,
      "label": "TA/Wisuda",
      "page": WisudaPage(),
      "color": Colors.cyan
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/kampusutb.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/suwandi.jpg"),
                  ),
                  SizedBox(height: 10),
                  Text("Pengaturan",
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Biodata"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BiodataPage()),
                );
              },
            ),
            _buildDrawerItem(Icons.update, "Pemuktahiran Data"),
            _buildDrawerItem(Icons.lock, "Ubah Password"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/dashboard-informatika.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -1,
                  left: 16,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/suwandi.jpg"),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pagi, M. Suwandi",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Teknik Informatika",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Card(
              margin: EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mata Kuliah Hari Ini",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Algoritma dan Pemrograman\nPengantar Teknologi Informasi",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: Icon(Icons.check_circle,
                            color: Colors.white, size: 20),
                        label: Text(
                          "Presensi",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
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
                        MaterialPageRoute(
                            builder: (context) => FiturAplikasiPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.all(16),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: fiturAplikasi.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => fiturAplikasi[index]["page"]),
                    );
                  },
                  child: Card(
                    color: fiturAplikasi[index]
                        ["color"], // Warna sesuai dengan fitur
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          fiturAplikasi[index]["icon"],
                          size: 40,
                          color: Colors
                              .white, // Ubah warna ikon menjadi putih agar kontras dengan background
                        ),
                        SizedBox(height: 8),
                        Text(
                          fiturAplikasi[index]["label"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight
                                  .bold), // Ubah warna teks agar kontras
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {},
    );
  }
}

// Dummy Pages
class DokumenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Dokumen")));
  }
}

class KalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Kalender")));
  }
}

class KeuanganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Keuangan")));
  }
}

class MateriTugasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Materi & Tugas")));
  }
}

class NilaiAkhirPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Nilai Akhir")));
  }
}

class PerwalianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Perwalian")));
  }
}

class SKKMPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("SKKM")));
  }
}

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Support Account")));
  }
}

class WisudaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("TA/Wisuda")));
  }
}
