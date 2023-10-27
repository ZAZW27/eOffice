import 'package:flutter/material.dart';

class Informasi extends StatefulWidget {
  const Informasi({super.key});

  @override
  State<Informasi> createState() => _InformasiState();
}

class _InformasiState extends State<Informasi> {
  @override
  Widget build(BuildContext context) {
    final contentWidth = MediaQuery.of(context).size.width * 0.98;
    return Scaffold(
      appBar: appBar(context),
      body: SingleChildScrollView(
          child: Column(
        children: [
          _infoBanner(contentWidth),
          const SizedBox(height: 20),
          _navBar(),
          infoPage(contentWidth, context),
        ],
      )),
    );
  }

  Container infoPage(double contentWidth, BuildContext context) {
    return Container(
      width: contentWidth,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .start, // Mengejarkan paragraf secara vertikal dari kiri
        children: [
          // DINAS / INSTANSI
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(
                          255, 213, 212, 212)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dinas / Instansi",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Badan Kepegawaian dan Pengembangan Sumber Daya Manusia ",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // NOMOR SURAT
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(
                          255, 213, 212, 212)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nomor Surat",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "000/1948/E/BKPSDM",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Tanggal surat
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(
                          255, 213, 212, 212)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tanggal Surat",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "20 October 2023",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SUrat diterima
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(
                          255, 213, 212, 212)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Surat diterima",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "20 October 2023 09:29:05",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // PERIHAL
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(
                          255, 213, 212, 212)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Perihal",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Surat Pengantar",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Tanggal
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(
                          255, 213, 212, 212)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tanggal",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Waktu
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(
                          255, 213, 212, 212)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Waktu",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "---",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Sifat
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      width: 2.0,
                      color: Color.fromARGB(
                          255, 29, 32, 78)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: 15.0, top: 5), // Add padding to the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sifat",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Biasa",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2.0,
                      color: Color.fromARGB(
                          255, 29, 32, 78)), // Define the underline style
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dokumen Lampiran",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Daftar Dokumen Digital Surat yang diupload oleh Pembuat Surat",
                      style: TextStyle(fontSize: 14),
                    ),
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
                              decoration: TextDecoration
                                  .underline, // Menambahkan garis bawah
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
                              decoration: TextDecoration
                                  .underline, // Menambahkan garis bawah
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
          ),
        ],
      ),
    );
  }

  Center _infoBanner(double contentWidth) {
    return Center(
      child: Container(
        width: contentWidth * 0.9,
        // decoration: BoxDecoration(color: Colors.black),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Text(
                "DB",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              // Gambar profil pengguna (jika ada)
              // Misalnya, backgroundImage: AssetImage('gambar_profil.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Badan Kepegawaian dan Pengembangan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Sumber Daya Manusia",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "DIDIK BUDIANTO",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "198701312011011007",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _navBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
            onPressed: () {
              // Action to perform when the "Informasi" button is pressed
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              minimumSize: const Size(40, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text(
              "Informasi",
              style: TextStyle(color: Colors.black),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              // Action to perform when the "Disposisi" button is pressed
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
              minimumSize: const Size(40, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text(
              "Disposisi",
              style: TextStyle(color: Colors.black),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              // Action to perform when the "Riwayat" button is pressed
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
              minimumSize: const Size(40, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text(
              "Riwayat",
              style: TextStyle(color: Colors.black),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              // Action to perform when the "Catatan" button is pressed
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.blue,
              minimumSize: const Size(40, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: const Text(
              "Catatan",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Surat Pengaturan',
        style: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w700),
      ),
      // adjust the style to the app bar
      elevation: 0.0,
      backgroundColor:
          const Color.fromARGB(100, 255, 255, 255).withOpacity(0.7),
      centerTitle: true,
      // add the arrow icons to the app bar
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
