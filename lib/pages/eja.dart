import 'package:flutter/material.dart';

void main() => runApp(const Informasi());

class Informasi extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const Informasi({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _InformasiState createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Surat Pengantar"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Aksi yang ingin Anda lakukan saat tombol kembali ditekan
              // Misalnya, Navigator.pop(context); untuk kembali ke layar sebelumnya
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profil Pengguna (sama seperti sebelumnya)
              const Row(
                children: [
                  CircleAvatar(
                    // Gambar profil pengguna (jika ada)
                    // Misalnya, backgroundImage: AssetImage('gambar_profil.jpg'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Badan Kepegawaian dan Pengembangan",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "Sumber Daya Manusia",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "DIDIK BUDIANTO",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "198701312011011007",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Aksi yang ingin Anda lakukan saat tombol Informasi ditekan
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black, minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Informasi", style: TextStyle(color: Colors.black),),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Aksi yang ingin Anda lakukan saat tombol Disposisi ditekan
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue, minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Disposisi", style: TextStyle(color: Colors.black),),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Aksi yang ingin Anda lakukan saat tombol Riwayat ditekan
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue, minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Riwayat", style: TextStyle(color: Colors.black),),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Aksi yang ingin Anda lakukan saat tombol Catatan ditekan
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue, minimumSize: const Size(40, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text("Catatan", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Dinas / Instansi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Badan Kepegawaian dan Pengembangan Sumber Daya Manusia ",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Nomor Surat",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "000/1948/E/BKPSDM",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Tanggal Surat",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "20 October 2023",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Surat Diterima",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "20 October 2023",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Perihal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Surat Pengantar",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Tanggal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "-",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Waktu",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "---",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Sifat",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "biasa",
                    style: TextStyle(backgroundColor: Colors.blue, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Mengejarkan paragraf secara vertikal dari kiri
                children: [
                  Text(
                    "Dokumen Lampiran",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Daftar Dokumen Digital Surat yang diupload oleh Pembuat Surat",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                  alignment: Alignment.centerLeft, // Membuat card rata kiri
                  margin: const EdgeInsets.only(bottom: 5.0),
                  width: 260.0, // Mengatur lebar container
                  height: 60.0, // Mengatur margin antara card
                  child: const Card(
                    color: Colors.blue, // Mengatur warna latar belakang
                    child: ListTile(
                      title: Text(
                        "1. suratpengantar_90566_signed.pdf",
                        style: TextStyle(
                      color: Colors.white, // Mengatur warna teks
                      decoration: TextDecoration.underline, // Menambahkan garis bawah
                      fontSize: 13.0, // Mengatur ukuran teks
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft, // Membuat card rata kiri
                  margin: const EdgeInsets.only(bottom: 16.0),
                  width: 310.0, // Mengatur lebar container
                  height: 60.0, // Mengatur margin antara card
                  child: const Card(
                    color: Colors.blue, // Mengatur warna latar belakang
                    child: ListTile(
                      title: Text(
                        "2. e4246ecf87daba2f6be4eea16078b69c.pdf",
                        style: TextStyle(
                      color: Colors.white, // Mengatur warna teks
                      decoration: TextDecoration.underline, // Menambahkan garis bawah
                      fontSize: 13.0, // Mengatur ukuran teks
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}