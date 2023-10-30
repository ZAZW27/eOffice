// ignore_for_file: camel_case_types

// ignore: unnecessary_import
import 'dart:ui';
import 'package:eoffice/pages/catatan.dart';
import 'package:eoffice/pages/disposisi.dart';
import 'package:eoffice/pages/informasi.dart';
import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: ListView(
        children: const <Widget>[
          headerSuratPengaturan(),
          DataSurat(
            initial: "AD",
            dari: "PURNOMO M - 1968100611990031004",
            kepada: "ADAMIN - 196804132000031008",
            tanggal: "2023-10-20 12:47:51",
            status: "Sudah Disposisi",
            disposisi: "Sudah Dilihat",
          ),
          DataSurat(
            initial: "RR",
            dari: "ADAMIN - 196804132000031008",
            kepada: "RAIHANAH RAHMAN - 19708021999032004",
            tanggal: "2023-10-20 '.3:5022",
            status: "Sudah Disposisi",
            disposisi: "Sudah Dilihat",
          ),
          DataSurat(
            initial: "AW",
            dari: "ADAMIN - 196804132000031008",
            kepada: "ADITYA EKA WICAKSANA- 19tszou132002121001",
            tanggal: "2023-10-20",
            status: "Sudah Disposisi",
            disposisi: "Sudah dilihat",
          ),
          DataSurat(
            initial: "AR",
            dari: "ADAMIN - 196804132000031008",
            kepada:"ABDUL RACHMAN - 96811181996031004",
            tanggal: "2023 10 20",
            status: "Belum Disposisi",
            disposisi: "Biasa",
          ),
          DataSurat(
            initial: "AD",
            dari: "Surat Cuti",
            kepada: "CUTI TAHUNAN",
            tanggal: "9 Oktober 2023 08:19:05",
            status: "Belum Disposisi",
            disposisi: "Biasa",
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
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w700
        ),
      ),
      // adjust the style to the app bar 
      elevation: 0.0,
      backgroundColor: const Color.fromARGB(100, 255, 255, 255).withOpacity(0.7),
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

class DataSuratMasukColumn extends StatefulWidget {
  const DataSuratMasukColumn({super.key});

  @override
  State<DataSuratMasukColumn> createState() => _DataSuratMasukColumnState();
}

class _DataSuratMasukColumnState extends State<DataSuratMasukColumn> {
  int jumlahSuratMasuk = 6;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20), // Spasi atas
          const Text(
            "Data Surat Masuk",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, // Ukuran teks
              fontWeight: FontWeight.bold, // Tebal
              color: Colors.blue,
            ),
          ),
          Text(
            "Menurut Data, ada $jumlahSuratMasuk Surat yang Masuk",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 20), // Spasi antara teks dan kotak pencarian
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari Surat",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Aksi ketika tombol "Cari" ditekan
                },
                child: const Text("Cari"),
              ),
            ],
          ),
          // Tambahkan konten lainnya di bawah teks "Data Surat Masuk"
        ],
      ),
    );
  }
}

class DataSurat extends StatefulWidget {
  final String initial;
  final String dari;
  final String kepada;
  final String tanggal;
  final String status;
  final String disposisi;

  const DataSurat({super.key, 
    required this.initial,
    required this.dari,
    required this.kepada,
    required this.tanggal,
    required this.status,
    required this.disposisi,
  });

  @override
  State<DataSurat> createState() => _DataSuratState();
}

class _DataSuratState extends State<DataSurat> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: 7, right: 7),
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: isTapped ? const Color.fromARGB(255, 243, 243, 245) : const Color.fromARGB(0, 255, 255, 255),
        border: Border(
          bottom: BorderSide(
            color: isTapped ? const Color.fromARGB(255, 15, 79, 131) : const Color.fromARGB(255, 223, 221, 221),
            width: isTapped ? 2 : 1.5,
          ),
        ),
        
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, bottom: 3), // Berikan padding keseluruhan
        child: Row(
          children: <Widget>[
            // Kolom pertama dengan lingkaran
            Container(
              width: 50.0, // Lebar lingkaran
              height: 50.0, // Tinggi lingkaran
              decoration: const BoxDecoration(
                color: Colors.blue, // Warna lingkaran
                shape: BoxShape.circle, // Bentuk lingkaran
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.initial,
                    style: const TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  )
                ]
              )
            ),
            const SizedBox(width: 10.0), // Spasi antara lingkaran dan persegi panjang
            // Kolom kedua dengan persegi panjang
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isTapped = !isTapped;
                  });
                },
                //contoh aku ambil
                onTapDown: (details) {
                  setState(() {
                    isTapped = true;
                  });
                },
                // CONTENT: information
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  decoration: const BoxDecoration(
                    // color: const Color.fromARGB(19, 0, 0, 0)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Text(
                            "Dari: ",
                            style: TextStyle(
                              fontSize: 12.5,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            widget.dari,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: isTapped ? Colors.blue : Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Text(
                            "Kepada: ",
                            style: TextStyle(
                              fontSize: 11.5,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            widget.kepada,
                            style: TextStyle(
                              fontSize: 11.5,
                              fontWeight: FontWeight.w400,
                              color: isTapped ? Colors.blue : Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.tanggal,
                        style: const TextStyle(
                          fontSize: 12.5
                        ),
                      ),
                      
                      Wrap(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 77, 190, 82),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                widget.status,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500, 
                                    fontSize: 11,
                                    shadows: [
                                      Shadow(
                                        offset: Offset(1.5, 1.0), // Set the shadow offset
                                        color: Color.fromARGB(255, 109, 109, 109),      // Set the shadow color
                                      ),
                                    ],
                                  ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 77, 190, 82),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                widget.disposisi,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500, 
                                  fontSize: 11,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(1.5, 1.0), // Set the shadow offset
                                      color: Color.fromARGB(255, 109, 109, 109),      // Set the shadow color
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class headerSuratPengaturan extends StatefulWidget {
  const headerSuratPengaturan({super.key});

  @override
  State<headerSuratPengaturan> createState() => _headerSuratPengaturanState();
}

class _headerSuratPengaturanState extends State<headerSuratPengaturan> {
  int jumlahSuratMasuk = 6;

  @override
  Widget build(BuildContext context) {
    final contentWidth =  MediaQuery.of(context).size.width * 0.98;
    return SingleChildScrollView(
      child: Column(
        children: [
          _infoBanner(contentWidth), // Consists of profile pic, and surat info
          _navBar(), // consists of navigation button to navigate through out the pages
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
                Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => const Informasi(),
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
              child: const Text("Informasi", style: TextStyle(color: Colors.black),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2, left: 2),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DisposisiSection()));
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
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Riwayat()));
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 1, 141, 255).withOpacity(1), 
                foregroundColor: Colors.white,
                minimumSize: const Size(40, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Riwayat", style: TextStyle(color: Colors.white),),
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
}

