import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text("Dashboard"),
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
              image: AssetImage("assets/kampusutb.jpg"), // Ganti dengan gambar yang sesuai
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/suwandi.jpg"), // Gambar profil
              ),
              SizedBox(height: 10),
              Text("Pengaturan", style: TextStyle(fontSize: 18, color: Colors.white)),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Biodata"),
          onTap: () {
            // Aksi untuk biodata
          },
        ),
        ListTile(
          leading: Icon(Icons.update),
          title: Text("Pemuktahiran Data"),
          onTap: () {
            // Aksi untuk pemuktahiran data
          },
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text("Ubah Password"),
          onTap: () {
            // Aksi untuk ubah password
          },
        ),
      ],
    ),
  ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Bagian Header (Background dengan Gambar + Profil di luar gambar)
            Stack(
              clipBehavior: Clip.none, // Untuk memungkinkan overflow (profil keluar dari gambar)
              children: [
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/kampusutb.jpg"), // Gambar background
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -6, // Profil keluar dari container gambar
                  left: 16,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/suwandi.jpg"), // Gambar profil
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pagi, M. Suwandi",
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
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

            SizedBox(height: 30), // Agar tidak terlalu menempel dengan bagian berikutnya

            // Card Mata Kuliah Hari Ini + Button Presensi
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
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Algoritma dan Pemrograman\nPengantar Teknologi Informasi",
                            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50, // Ukuran button agar lebih rapi
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: Icon(Icons.check_circle, color: Colors.white, size: 20),
                        label: Text(
                          "Presensi",
                          style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Label "Fitur Aplikasi"
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fitur Aplikasi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // GridView untuk menu fitur aplikasi
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
                return _buildMenuItem(
                  fiturAplikasi[index]["icon"],
                  fiturAplikasi[index]["label"],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk menampilkan menu dalam bentuk kartu
  Widget _buildMenuItem(IconData icon, String title) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.black54),
            SizedBox(height: 8),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  // Data fitur aplikasi
  final List<Map<String, dynamic>> fiturAplikasi = [
    {"icon": Icons.folder, "label": "Dokumen"},
    {"icon": Icons.calendar_today, "label": "Kalender"},
    {"icon": Icons.attach_money, "label": "Keuangan"},
    {"icon": Icons.assignment, "label": "Materi & Tugas"},
    {"icon": Icons.grade, "label": "Nilai Akhir"},
    {"icon": Icons.people, "label": "Perwalian"},
    {"icon": Icons.school, "label" : "SKKM"},
    {"icon": Icons.support, "label" : "Support Account"},
  ];
}
