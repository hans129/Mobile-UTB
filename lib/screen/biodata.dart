import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biodata"),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/suwandi.jpg',
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Rievan Rivaldy Nur Triana",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("NPM: 24552011030"),
                  Text("Email: rievanrivaldynurtianax@gmail.com"),
                ],
              ),
            ),
            SizedBox(height: 20),
            _buildSection("Biodata", [
              _buildDetail("Tanggal Lahir", "04/08/2005"),
              _buildDetail("Tempat Lahir", "Bandung"),
              _buildDetail("Provinsi Lahir", "Jawa Barat"),
              _buildDetail("Kota/Kabupaten Lahir", "Kota Bandung"),
              _buildDetail("Jenis Kelamin", "Pria"),
              _buildDetail("Status Sipil", "Belum Menikah"),
              _buildDetail("Jenis Identitas", "KTP"),
              _buildDetail("No Identitas", "3273220408080002"),
              _buildDetail("Agama", "Islam"),
              _buildDetail("Alamat Tinggal", "Jl. Setia Graha A-V No.8 RT10/RW15"),
              _buildDetail("RT/RW", "10/15"),
              _buildDetail("Desa/Kelurahan", "Kelurahan Margasari"),
              _buildDetail("Kecamatan", "Buah Batu"),
              _buildDetail("Kota/Kabupaten", "Kota Bandung"),
              _buildDetail("Provinsi", "Jawa Barat"),
              _buildDetail("Kodepos", "40286"),
              _buildDetail("Telepon", "081313340265"),
              _buildDetail("HP", "081313340365"),
            ]),
            _buildSection("Data Program Studi", [
              _buildDetail("Program Studi", "Teknik Informatika"),
              _buildDetail("Tahun Angkatan", "2024"),
            ]),
            _buildSection("Data Orang Tua/Wali", [
              _buildDetail("Nama Ayah Kandung", "(ALM) Drs. Triwiyanto"),
              _buildDetail("Tanggal Lahir Ayah", "22/04/1968"),
              _buildDetail("Pendidikan Ayah", "S1"),
              _buildDetail("Pekerjaan Ayah", "Sudah Meninggal"),
              _buildDetail("Nama Ibu Kandung", "Dra. Nurleila Hasyim"),
              _buildDetail("Tanggal Lahir Ibu", "24/03/1972"),
              _buildDetail("Pendidikan Ibu", "S1"),
              _buildDetail("Pekerjaan Ibu", "Karyawan Swasta"),
              _buildDetail("Anak Ke", "2"),
              _buildDetail("Dari", "2 Bersaudara"),
              _buildDetail("Nama Wali", "Rizkianty Retha Nurtriana"),
              _buildDetail("Pekerjaan Wali", "-"),
              _buildDetail("Alamat Tinggal", "Jl. Setia Graha A-V No.8 RT10/RW15 Kel Margasari Kec.Buah Batu Bandung Jawa Barat"),
              _buildDetail("RT/RW", "10/15"),
              _buildDetail("Telepon", "081313340265"),
              _buildDetail("HP", "081313340365"),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Divider(),
        Column(children: children),
      ],
    );
  }

  Widget _buildDetail(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "$label:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
