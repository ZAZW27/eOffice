import 'package:eoffice/pages/catatan.dart';
import 'package:eoffice/pages/data_surat.dart';
import 'package:eoffice/pages/disposisi.dart';
import 'package:eoffice/pages/riwayat.dart';
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
          _navBar(),
          infoPage(contentWidth, context),
        ],
      )),
    );
  }

  Container infoPage(double contentWidth, BuildContext context) {
    return Container(
      width: contentWidth,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // DINAS / INSTANSI
          SizedBox(
            width: contentWidth,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: Color.fromARGB(255, 213, 212, 212)
                  ), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
                    color: Color.fromARGB(255, 213, 212, 212)
                  ), // Define the underline style
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
                padding: EdgeInsets.only(bottom: 5), // Add padding to the bottom
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
              decoration: const BoxDecoration(
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
                    const Text(
                      "Dokumen Lampiran",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
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
      child: SizedBox(
        width: contentWidth,
        // decoration: BoxDecoration(color: Colors.black),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              child: Text(
                "DB",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              // Gambar profil pengguna (jika ada)
              // Misalnya, backgroundImage: AssetImage('gambar_profil.jpg'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Badan Kepegawaian dan Pengembangan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "Sumber Daya Manusia",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.7,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center, // Center-align the text
                  "DIDIK BUDIANTO",
                  style: TextStyle(fontSize: 12),
                ),
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
          Padding(
            padding: const EdgeInsets.only(right: 2),
            child: OutlinedButton(
              onPressed: () {
                // Action to perform when the "SuratPengaturan" button is pressed
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 1, 141, 255).withOpacity(1), 
                foregroundColor: Colors.white,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Informasi", style: TextStyle(color: Colors.white),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => const DisposisiSection(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 10),
                ));
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Disposisi", style: TextStyle(color: Colors.black),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => const Riwayat(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 10),
                ));
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Riwayat", style: TextStyle(color: Colors.black),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CatatanSection()));
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blue,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Catatan", style: TextStyle(color: Colors.black),),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: const Text(
        'Data Surat',
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
